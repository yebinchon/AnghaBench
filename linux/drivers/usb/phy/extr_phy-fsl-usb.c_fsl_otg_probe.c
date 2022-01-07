
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int ENODEV ;
 int FSL_OTG_MAJOR ;
 int FSL_OTG_NAME ;
 int dev_err (int *,char*) ;
 int dev_get_platdata (int *) ;
 int fsl_otg_conf (struct platform_device*) ;
 int otg_fops ;
 int register_chrdev (int ,int ,int *) ;
 int usb_otg_start (struct platform_device*) ;

__attribute__((used)) static int fsl_otg_probe(struct platform_device *pdev)
{
 int ret;

 if (!dev_get_platdata(&pdev->dev))
  return -ENODEV;


 ret = fsl_otg_conf(pdev);
 if (ret) {
  dev_err(&pdev->dev, "Couldn't configure OTG module\n");
  return ret;
 }


 ret = usb_otg_start(pdev);
 if (ret) {
  dev_err(&pdev->dev, "Can't init FSL OTG device\n");
  return ret;
 }

 ret = register_chrdev(FSL_OTG_MAJOR, FSL_OTG_NAME, &otg_fops);
 if (ret) {
  dev_err(&pdev->dev, "unable to register FSL OTG device\n");
  return ret;
 }

 return ret;
}
