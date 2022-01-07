
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int dr_mode; int is_host; struct device* dev; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 int CONFIG_USB_MTU3_GADGET ;
 int CONFIG_USB_MTU3_HOST ;
 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;



 int dev_err (struct device*,char*,...) ;
 int device_enable_async_suspend (struct device*) ;
 struct ssusb_mtk* devm_kzalloc (struct device*,int,int ) ;
 int dma_set_mask_and_coherent (struct device*,int ) ;
 int get_ssusb_rscs (struct platform_device*,struct ssusb_mtk*) ;
 int platform_set_drvdata (struct platform_device*,struct ssusb_mtk*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int ssusb_debugfs_create_root (struct ssusb_mtk*) ;
 int ssusb_debugfs_remove_root (struct ssusb_mtk*) ;
 int ssusb_gadget_exit (struct ssusb_mtk*) ;
 int ssusb_gadget_init (struct ssusb_mtk*) ;
 int ssusb_host_exit (struct ssusb_mtk*) ;
 int ssusb_host_init (struct ssusb_mtk*,struct device_node*) ;
 int ssusb_ip_sw_reset (struct ssusb_mtk*) ;
 int ssusb_otg_switch_init (struct ssusb_mtk*) ;
 int ssusb_rscs_exit (struct ssusb_mtk*) ;
 int ssusb_rscs_init (struct ssusb_mtk*) ;

__attribute__((used)) static int mtu3_probe(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 struct device *dev = &pdev->dev;
 struct ssusb_mtk *ssusb;
 int ret = -ENOMEM;


 ssusb = devm_kzalloc(dev, sizeof(*ssusb), GFP_KERNEL);
 if (!ssusb)
  return -ENOMEM;

 ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
 if (ret) {
  dev_err(dev, "No suitable DMA config available\n");
  return -ENOTSUPP;
 }

 platform_set_drvdata(pdev, ssusb);
 ssusb->dev = dev;

 ret = get_ssusb_rscs(pdev, ssusb);
 if (ret)
  return ret;

 ssusb_debugfs_create_root(ssusb);


 pm_runtime_enable(dev);
 pm_runtime_get_sync(dev);
 device_enable_async_suspend(dev);

 ret = ssusb_rscs_init(ssusb);
 if (ret)
  goto comm_init_err;

 ssusb_ip_sw_reset(ssusb);

 if (IS_ENABLED(CONFIG_USB_MTU3_HOST))
  ssusb->dr_mode = 130;
 else if (IS_ENABLED(CONFIG_USB_MTU3_GADGET))
  ssusb->dr_mode = 128;


 ssusb->is_host = !(ssusb->dr_mode == 128);

 switch (ssusb->dr_mode) {
 case 128:
  ret = ssusb_gadget_init(ssusb);
  if (ret) {
   dev_err(dev, "failed to initialize gadget\n");
   goto comm_exit;
  }
  break;
 case 130:
  ret = ssusb_host_init(ssusb, node);
  if (ret) {
   dev_err(dev, "failed to initialize host\n");
   goto comm_exit;
  }
  break;
 case 129:
  ret = ssusb_gadget_init(ssusb);
  if (ret) {
   dev_err(dev, "failed to initialize gadget\n");
   goto comm_exit;
  }

  ret = ssusb_host_init(ssusb, node);
  if (ret) {
   dev_err(dev, "failed to initialize host\n");
   goto gadget_exit;
  }

  ret = ssusb_otg_switch_init(ssusb);
  if (ret) {
   dev_err(dev, "failed to initialize switch\n");
   goto host_exit;
  }
  break;
 default:
  dev_err(dev, "unsupported mode: %d\n", ssusb->dr_mode);
  ret = -EINVAL;
  goto comm_exit;
 }

 return 0;

host_exit:
 ssusb_host_exit(ssusb);
gadget_exit:
 ssusb_gadget_exit(ssusb);
comm_exit:
 ssusb_rscs_exit(ssusb);
comm_init_err:
 pm_runtime_put_sync(dev);
 pm_runtime_disable(dev);
 ssusb_debugfs_remove_root(ssusb);

 return ret;
}
