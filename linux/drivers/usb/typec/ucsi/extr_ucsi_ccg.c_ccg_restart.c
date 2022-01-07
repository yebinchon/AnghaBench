
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_ccg {int ucsi; struct device* dev; int ppm; int irq; } ;
struct device {int dummy; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ccg_irq_handler ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 int request_threaded_irq (int ,int *,int ,int,int ,struct ucsi_ccg*) ;
 int ucsi_ccg_init (struct ucsi_ccg*) ;
 int ucsi_register_ppm (struct device*,int *) ;

__attribute__((used)) static int ccg_restart(struct ucsi_ccg *uc)
{
 struct device *dev = uc->dev;
 int status;

 status = ucsi_ccg_init(uc);
 if (status < 0) {
  dev_err(dev, "ucsi_ccg_start fail, err=%d\n", status);
  return status;
 }

 status = request_threaded_irq(uc->irq, ((void*)0), ccg_irq_handler,
          IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
          dev_name(dev), uc);
 if (status < 0) {
  dev_err(dev, "request_threaded_irq failed - %d\n", status);
  return status;
 }

 uc->ucsi = ucsi_register_ppm(dev, &uc->ppm);
 if (IS_ERR(uc->ucsi)) {
  dev_err(uc->dev, "ucsi_register_ppm failed\n");
  return PTR_ERR(uc->ucsi);
 }

 return 0;
}
