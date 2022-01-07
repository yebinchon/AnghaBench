
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_wcnss {int dummy; } ;
struct platform_device {int dev; } ;
typedef int irq_handler_t ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 int dev_dbg (int *,char*,char const*) ;
 int dev_err (int *,char*,char const*) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int,char*,struct qcom_wcnss*) ;
 int platform_get_irq_byname (struct platform_device*,char const*) ;

__attribute__((used)) static int wcnss_request_irq(struct qcom_wcnss *wcnss,
        struct platform_device *pdev,
        const char *name,
        bool optional,
        irq_handler_t thread_fn)
{
 int ret;

 ret = platform_get_irq_byname(pdev, name);
 if (ret < 0 && optional) {
  dev_dbg(&pdev->dev, "no %s IRQ defined, ignoring\n", name);
  return 0;
 } else if (ret < 0) {
  dev_err(&pdev->dev, "no %s IRQ defined\n", name);
  return ret;
 }

 ret = devm_request_threaded_irq(&pdev->dev, ret,
     ((void*)0), thread_fn,
     IRQF_TRIGGER_RISING | IRQF_ONESHOT,
     "wcnss", wcnss);
 if (ret)
  dev_err(&pdev->dev, "request %s IRQ failed\n", name);

 return ret;
}
