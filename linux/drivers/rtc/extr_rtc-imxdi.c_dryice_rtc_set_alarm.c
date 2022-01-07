
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct imxdi_dev {int dummy; } ;
struct device {int dummy; } ;


 int DCAMR ;
 int DIER_CAIE ;
 struct imxdi_dev* dev_get_drvdata (struct device*) ;
 int di_int_disable (struct imxdi_dev*,int ) ;
 int di_int_enable (struct imxdi_dev*,int ) ;
 int di_write_wait (struct imxdi_dev*,int ,int ) ;
 int rtc_tm_to_time64 (int *) ;

__attribute__((used)) static int dryice_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct imxdi_dev *imxdi = dev_get_drvdata(dev);
 int rc;


 rc = di_write_wait(imxdi, rtc_tm_to_time64(&alarm->time), DCAMR);
 if (rc)
  return rc;

 if (alarm->enabled)
  di_int_enable(imxdi, DIER_CAIE);
 else
  di_int_disable(imxdi, DIER_CAIE);

 return 0;
}
