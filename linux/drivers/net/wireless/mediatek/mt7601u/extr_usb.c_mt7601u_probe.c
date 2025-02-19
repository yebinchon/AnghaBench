
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct mt7601u_dev {int hw; int stat_wq; int state; int dev; int vend_buf; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MT7601U_STATE_INITIALIZED ;
 int MT_ASIC_VERSION ;
 int MT_EFUSE_CTRL ;
 int MT_EFUSE_CTRL_SEL ;
 int MT_MAC_CSR0 ;
 int MT_VEND_BUF ;
 int destroy_workqueue (int ) ;
 int dev_info (int ,char*,int,int) ;
 int dev_warn (int ,char*) ;
 int devm_kmalloc (int ,int ,int ) ;
 int ieee80211_free_hw (int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 struct mt7601u_dev* mt7601u_alloc_device (int *) ;
 int mt7601u_assign_pipes (struct usb_interface*,struct mt7601u_dev*) ;
 int mt7601u_cleanup (struct mt7601u_dev*) ;
 int mt7601u_init_hardware (struct mt7601u_dev*) ;
 int mt7601u_register_device (struct mt7601u_dev*) ;
 int mt7601u_rr (struct mt7601u_dev*,int ) ;
 int mt7601u_wait_asic_ready (struct mt7601u_dev*) ;
 int set_bit (int ,int *) ;
 struct usb_device* usb_get_dev (struct usb_device*) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_reset_device (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct mt7601u_dev*) ;

__attribute__((used)) static int mt7601u_probe(struct usb_interface *usb_intf,
    const struct usb_device_id *id)
{
 struct usb_device *usb_dev = interface_to_usbdev(usb_intf);
 struct mt7601u_dev *dev;
 u32 asic_rev, mac_rev;
 int ret;

 dev = mt7601u_alloc_device(&usb_intf->dev);
 if (!dev)
  return -ENOMEM;

 usb_dev = usb_get_dev(usb_dev);
 usb_reset_device(usb_dev);

 usb_set_intfdata(usb_intf, dev);

 dev->vend_buf = devm_kmalloc(dev->dev, MT_VEND_BUF, GFP_KERNEL);
 if (!dev->vend_buf) {
  ret = -ENOMEM;
  goto err;
 }

 ret = mt7601u_assign_pipes(usb_intf, dev);
 if (ret)
  goto err;
 ret = mt7601u_wait_asic_ready(dev);
 if (ret)
  goto err;

 asic_rev = mt7601u_rr(dev, MT_ASIC_VERSION);
 mac_rev = mt7601u_rr(dev, MT_MAC_CSR0);
 dev_info(dev->dev, "ASIC revision: %08x MAC revision: %08x\n",
   asic_rev, mac_rev);
 if ((asic_rev >> 16) != 0x7601) {
  ret = -ENODEV;
  goto err;
 }


 if (!(mt7601u_rr(dev, MT_EFUSE_CTRL) & MT_EFUSE_CTRL_SEL))
  dev_warn(dev->dev, "Warning: eFUSE not present\n");

 ret = mt7601u_init_hardware(dev);
 if (ret)
  goto err;
 ret = mt7601u_register_device(dev);
 if (ret)
  goto err_hw;

 set_bit(MT7601U_STATE_INITIALIZED, &dev->state);

 return 0;
err_hw:
 mt7601u_cleanup(dev);
err:
 usb_set_intfdata(usb_intf, ((void*)0));
 usb_put_dev(interface_to_usbdev(usb_intf));

 destroy_workqueue(dev->stat_wq);
 ieee80211_free_hw(dev->hw);
 return ret;
}
