
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dsps_glue {int vbus_irq; int dev; } ;


 int EPROBE_DEFER ;
 int IRQF_ONESHOT ;
 int dev_dbg (int ,char*,int) ;
 int devm_request_threaded_irq (int ,int,int *,int ,int ,char*,struct dsps_glue*) ;
 int dsps_vbus_threaded_irq ;
 int platform_get_irq_byname (struct platform_device*,char*) ;

__attribute__((used)) static int dsps_setup_optional_vbus_irq(struct platform_device *pdev,
     struct dsps_glue *glue)
{
 int error;

 glue->vbus_irq = platform_get_irq_byname(pdev, "vbus");
 if (glue->vbus_irq == -EPROBE_DEFER)
  return -EPROBE_DEFER;

 if (glue->vbus_irq <= 0) {
  glue->vbus_irq = 0;
  return 0;
 }

 error = devm_request_threaded_irq(glue->dev, glue->vbus_irq,
       ((void*)0), dsps_vbus_threaded_irq,
       IRQF_ONESHOT,
       "vbus", glue);
 if (error) {
  glue->vbus_irq = 0;
  return error;
 }
 dev_dbg(glue->dev, "VBUS irq %i configured\n", glue->vbus_irq);

 return 0;
}
