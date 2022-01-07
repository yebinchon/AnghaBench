
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int RV3029_IRQ_CTRL ;
 int RV3029_IRQ_CTRL_AIE ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*,int) ;
 int rv3029_read_regs (struct device*,int ,int *,int) ;
 int rv3029_write_regs (struct device*,int ,int *,int) ;

__attribute__((used)) static int rv3029_alarm_irq_enable(struct device *dev, unsigned int enable)
{
 int ret;
 u8 controls;

 ret = rv3029_read_regs(dev, RV3029_IRQ_CTRL, &controls, 1);
 if (ret < 0) {
  dev_warn(dev, "Read IRQ Control Register error %d\n", ret);
  return ret;
 }


 if (enable)
  controls |= RV3029_IRQ_CTRL_AIE;
 else
  controls &= ~RV3029_IRQ_CTRL_AIE;

 ret = rv3029_write_regs(dev, RV3029_IRQ_CTRL, &controls, 1);
 if (ret < 0) {
  dev_err(dev, "can't update INT reg\n");
  return ret;
 }

 return 0;
}
