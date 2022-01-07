
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int max_speed; int speed; char* name; int sg_supported; int quirk_avoids_skb_reserve; int ep_list; int * ops; } ;
struct cdns3_device {int onchip_buffers; int setup_dma; int setup_buf; int sysdev; void* zlp_buf; int dev; TYPE_2__ gadget; void* dev_ver; TYPE_1__* regs; int aligned_buf_list; int aligned_buf_wq; int pending_status_wq; int lock; } ;
struct cdns3 {struct cdns3_device* gadget_dev; int dev; TYPE_1__* dev_regs; } ;
struct TYPE_3__ {int usb_cap2; int usb_cap1; int usb_cap6; } ;


 int CDNS3_EP_ZLP_BUF_SIZE ;
 int ENOMEM ;
 void* GET_DEV_BASE_VERSION (void*) ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int USB_CAP2_ACTUAL_MEM_SIZE (int) ;




 int cdns3_free_aligned_request_buf ;
 int cdns3_free_all_eps (struct cdns3_device*) ;
 int cdns3_gadget_ops ;
 int cdns3_init_eps (struct cdns3_device*) ;
 int cdns3_pending_setup_status_handler ;
 int dev_dbg (int ,char*,void*) ;
 int dev_err (int ,char*,...) ;
 int device_property_read_u16 (int ,char*,int*) ;
 int dma_alloc_coherent (int ,int,int *,int ) ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 void* readl (int *) ;
 int spin_lock_init (int *) ;
 int usb_add_gadget_udc (int ,TYPE_2__*) ;
 int usb_get_maximum_speed (int ) ;

__attribute__((used)) static int cdns3_gadget_start(struct cdns3 *cdns)
{
 struct cdns3_device *priv_dev;
 u32 max_speed;
 int ret;

 priv_dev = kzalloc(sizeof(*priv_dev), GFP_KERNEL);
 if (!priv_dev)
  return -ENOMEM;

 cdns->gadget_dev = priv_dev;
 priv_dev->sysdev = cdns->dev;
 priv_dev->dev = cdns->dev;
 priv_dev->regs = cdns->dev_regs;

 device_property_read_u16(priv_dev->dev, "cdns,on-chip-buff-size",
     &priv_dev->onchip_buffers);

 if (priv_dev->onchip_buffers <= 0) {
  u32 reg = readl(&priv_dev->regs->usb_cap2);

  priv_dev->onchip_buffers = USB_CAP2_ACTUAL_MEM_SIZE(reg);
 }

 if (!priv_dev->onchip_buffers)
  priv_dev->onchip_buffers = 256;

 max_speed = usb_get_maximum_speed(cdns->dev);


 switch (max_speed) {
 case 131:
 case 130:
 case 129:
  break;
 default:
  dev_err(cdns->dev, "invalid maximum_speed parameter %d\n",
   max_speed);

 case 128:

  max_speed = 129;
  break;
 }


 priv_dev->gadget.max_speed = max_speed;
 priv_dev->gadget.speed = 128;
 priv_dev->gadget.ops = &cdns3_gadget_ops;
 priv_dev->gadget.name = "usb-ss-gadget";
 priv_dev->gadget.sg_supported = 1;
 priv_dev->gadget.quirk_avoids_skb_reserve = 1;

 spin_lock_init(&priv_dev->lock);
 INIT_WORK(&priv_dev->pending_status_wq,
    cdns3_pending_setup_status_handler);

 INIT_WORK(&priv_dev->aligned_buf_wq,
    cdns3_free_aligned_request_buf);


 INIT_LIST_HEAD(&priv_dev->gadget.ep_list);
 INIT_LIST_HEAD(&priv_dev->aligned_buf_list);

 ret = cdns3_init_eps(priv_dev);
 if (ret) {
  dev_err(priv_dev->dev, "Failed to create endpoints\n");
  goto err1;
 }


 priv_dev->setup_buf = dma_alloc_coherent(priv_dev->sysdev, 8,
       &priv_dev->setup_dma, GFP_DMA);
 if (!priv_dev->setup_buf) {
  ret = -ENOMEM;
  goto err2;
 }

 priv_dev->dev_ver = readl(&priv_dev->regs->usb_cap6);

 dev_dbg(priv_dev->dev, "Device Controller version: %08x\n",
  readl(&priv_dev->regs->usb_cap6));
 dev_dbg(priv_dev->dev, "USB Capabilities:: %08x\n",
  readl(&priv_dev->regs->usb_cap1));
 dev_dbg(priv_dev->dev, "On-Chip memory configuration: %08x\n",
  readl(&priv_dev->regs->usb_cap2));

 priv_dev->dev_ver = GET_DEV_BASE_VERSION(priv_dev->dev_ver);

 priv_dev->zlp_buf = kzalloc(CDNS3_EP_ZLP_BUF_SIZE, GFP_KERNEL);
 if (!priv_dev->zlp_buf) {
  ret = -ENOMEM;
  goto err3;
 }


 ret = usb_add_gadget_udc(priv_dev->dev, &priv_dev->gadget);
 if (ret < 0) {
  dev_err(priv_dev->dev,
   "Failed to register USB device controller\n");
  goto err4;
 }

 return 0;
err4:
 kfree(priv_dev->zlp_buf);
err3:
 dma_free_coherent(priv_dev->sysdev, 8, priv_dev->setup_buf,
     priv_dev->setup_dma);
err2:
 cdns3_free_all_eps(priv_dev);
err1:
 cdns->gadget_dev = ((void*)0);
 return ret;
}
