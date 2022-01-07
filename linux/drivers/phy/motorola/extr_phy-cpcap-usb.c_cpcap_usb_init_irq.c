
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cpcap_phy_ddata {int dev; } ;


 int ENODEV ;
 int IRQF_SHARED ;
 int cpcap_phy_irq_thread ;
 int dev_err (int ,char*,char const*,int) ;
 int devm_request_threaded_irq (int ,int,int *,int ,int ,char const*,struct cpcap_phy_ddata*) ;
 int platform_get_irq_byname (struct platform_device*,char const*) ;

__attribute__((used)) static int cpcap_usb_init_irq(struct platform_device *pdev,
         struct cpcap_phy_ddata *ddata,
         const char *name)
{
 int irq, error;

 irq = platform_get_irq_byname(pdev, name);
 if (irq < 0)
  return -ENODEV;

 error = devm_request_threaded_irq(ddata->dev, irq, ((void*)0),
       cpcap_phy_irq_thread,
       IRQF_SHARED,
       name, ddata);
 if (error) {
  dev_err(ddata->dev, "could not get irq %s: %i\n",
   name, error);

  return error;
 }

 return 0;
}
