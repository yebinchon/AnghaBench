
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int dr_mode; } ;
struct platform_device {int dev; } ;


 int EINVAL ;



 struct ssusb_mtk* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;
 int ssusb_debugfs_remove_root (struct ssusb_mtk*) ;
 int ssusb_gadget_exit (struct ssusb_mtk*) ;
 int ssusb_host_exit (struct ssusb_mtk*) ;
 int ssusb_otg_switch_exit (struct ssusb_mtk*) ;
 int ssusb_rscs_exit (struct ssusb_mtk*) ;

__attribute__((used)) static int mtu3_remove(struct platform_device *pdev)
{
 struct ssusb_mtk *ssusb = platform_get_drvdata(pdev);

 switch (ssusb->dr_mode) {
 case 128:
  ssusb_gadget_exit(ssusb);
  break;
 case 130:
  ssusb_host_exit(ssusb);
  break;
 case 129:
  ssusb_otg_switch_exit(ssusb);
  ssusb_gadget_exit(ssusb);
  ssusb_host_exit(ssusb);
  break;
 default:
  return -EINVAL;
 }

 ssusb_rscs_exit(ssusb);
 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 ssusb_debugfs_remove_root(ssusb);

 return 0;
}
