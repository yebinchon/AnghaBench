
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int endp_in; int endp_out; int endp_out2; void* rx_urb; void* tx_urb; scalar_t__ ap; int fraglist; int rxdataq; scalar_t__ removed; struct usb_device* usb; struct net_device* dev; } ;
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dev; } ;
struct net_device {int name; int addr_len; int dev_addr; int watchdog_timeo; int * wireless_handlers; int * netdev_ops; } ;
typedef int __le16 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int IW_ESSID_MAX_SIZE ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int ZD1201_CMDCODE_INIT ;
 short ZD1201_PORTTYPE_AP ;
 short ZD1201_PORTTYPE_BSS ;
 short ZD1201_RATEB1 ;
 short ZD1201_RATEB11 ;
 short ZD1201_RATEB2 ;
 short ZD1201_RATEB5 ;
 int ZD1201_RID_CNFDESIREDSSID ;
 int ZD1201_RID_CNFMAXDATALEN ;
 int ZD1201_RID_CNFOWNMACADDR ;
 int ZD1201_RID_CNFPORTTYPE ;
 int ZD1201_RID_TXRATECNTL ;
 int ZD1201_TX_TIMEOUT ;
 struct net_device* alloc_etherdev (int) ;
 scalar_t__ ap ;
 int cpu_to_le16 (int ) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int ) ;
 int free_netdev (struct net_device*) ;
 int init_waitqueue_head (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int mdelay (int) ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int strcpy (int ,char*) ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_free_urb (void*) ;
 int usb_set_intfdata (struct usb_interface*,struct zd1201*) ;
 int zd1201_disable (struct zd1201*) ;
 int zd1201_docmd (struct zd1201*,int ,int ,int ,int ) ;
 int zd1201_drvr_start (struct zd1201*) ;
 int zd1201_enable (struct zd1201*) ;
 int zd1201_fw_upload (struct usb_device*,scalar_t__) ;
 int zd1201_getconfig (struct zd1201*,int ,int ,int ) ;
 int zd1201_iw_handlers ;
 int zd1201_netdev_ops ;
 int zd1201_setconfig (struct zd1201*,int ,char*,int,int) ;
 int zd1201_setconfig16 (struct zd1201*,int ,short) ;

__attribute__((used)) static int zd1201_probe(struct usb_interface *interface,
   const struct usb_device_id *id)
{
 struct zd1201 *zd;
 struct net_device *dev;
 struct usb_device *usb;
 int err;
 short porttype;
 char buf[IW_ESSID_MAX_SIZE+2];

 usb = interface_to_usbdev(interface);

 dev = alloc_etherdev(sizeof(*zd));
 if (!dev)
  return -ENOMEM;
 zd = netdev_priv(dev);
 zd->dev = dev;

 zd->ap = ap;
 zd->usb = usb;
 zd->removed = 0;
 init_waitqueue_head(&zd->rxdataq);
 INIT_HLIST_HEAD(&zd->fraglist);

 err = zd1201_fw_upload(usb, zd->ap);
 if (err) {
  dev_err(&usb->dev, "zd1201 firmware upload failed: %d\n", err);
  goto err_zd;
 }

 zd->endp_in = 1;
 zd->endp_out = 1;
 zd->endp_out2 = 2;
 zd->rx_urb = usb_alloc_urb(0, GFP_KERNEL);
 zd->tx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!zd->rx_urb || !zd->tx_urb) {
  err = -ENOMEM;
  goto err_zd;
 }

 mdelay(100);
 err = zd1201_drvr_start(zd);
 if (err)
  goto err_zd;

 err = zd1201_setconfig16(zd, ZD1201_RID_CNFMAXDATALEN, 2312);
 if (err)
  goto err_start;

 err = zd1201_setconfig16(zd, ZD1201_RID_TXRATECNTL,
     ZD1201_RATEB1 | ZD1201_RATEB2 | ZD1201_RATEB5 | ZD1201_RATEB11);
 if (err)
  goto err_start;

 dev->netdev_ops = &zd1201_netdev_ops;
 dev->wireless_handlers = &zd1201_iw_handlers;
 dev->watchdog_timeo = ZD1201_TX_TIMEOUT;
 strcpy(dev->name, "wlan%d");

 err = zd1201_getconfig(zd, ZD1201_RID_CNFOWNMACADDR,
     dev->dev_addr, dev->addr_len);
 if (err)
  goto err_start;


 *(__le16 *)buf = cpu_to_le16(0);
 err = zd1201_setconfig(zd, ZD1201_RID_CNFDESIREDSSID, buf,
     IW_ESSID_MAX_SIZE+2, 1);
 if (err)
  goto err_start;

 if (zd->ap)
  porttype = ZD1201_PORTTYPE_AP;
 else
  porttype = ZD1201_PORTTYPE_BSS;
 err = zd1201_setconfig16(zd, ZD1201_RID_CNFPORTTYPE, porttype);
 if (err)
  goto err_start;

 SET_NETDEV_DEV(dev, &usb->dev);

 err = register_netdev(dev);
 if (err)
  goto err_start;
 dev_info(&usb->dev, "%s: ZD1201 USB Wireless interface\n",
     dev->name);

 usb_set_intfdata(interface, zd);
 zd1201_enable(zd);
 zd1201_disable(zd);
 return 0;

err_start:

 zd1201_docmd(zd, ZD1201_CMDCODE_INIT, 0, 0, 0);
err_zd:
 usb_free_urb(zd->tx_urb);
 usb_free_urb(zd->rx_urb);
 free_netdev(dev);
 return err;
}
