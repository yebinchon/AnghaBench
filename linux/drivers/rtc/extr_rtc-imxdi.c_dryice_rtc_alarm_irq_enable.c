
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imxdi_dev {int dummy; } ;
struct device {int dummy; } ;


 int DIER_CAIE ;
 struct imxdi_dev* dev_get_drvdata (struct device*) ;
 int di_int_disable (struct imxdi_dev*,int ) ;
 int di_int_enable (struct imxdi_dev*,int ) ;

__attribute__((used)) static int dryice_rtc_alarm_irq_enable(struct device *dev,
  unsigned int enabled)
{
 struct imxdi_dev *imxdi = dev_get_drvdata(dev);

 if (enabled)
  di_int_enable(imxdi, DIER_CAIE);
 else
  di_int_disable(imxdi, DIER_CAIE);

 return 0;
}
