
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int enabled; int pending; int time; } ;
struct max8925_rtc_info {int rtc; } ;
struct device {int dummy; } ;


 int ALARM0_IRQ ;
 int ALARM0_STATUS ;
 int MAX8925_ALARM0_CNTL ;
 int MAX8925_ALARM0_SEC ;
 int MAX8925_RTC_IRQ_MASK ;
 int MAX8925_RTC_STATUS ;
 int TIME_NUM ;
 struct max8925_rtc_info* dev_get_drvdata (struct device*) ;
 int max8925_bulk_read (int ,int ,int,unsigned char*) ;
 int max8925_reg_read (int ,int ) ;
 int tm_calc (int *,unsigned char*,int) ;

__attribute__((used)) static int max8925_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct max8925_rtc_info *info = dev_get_drvdata(dev);
 unsigned char buf[TIME_NUM];
 int ret;

 ret = max8925_bulk_read(info->rtc, MAX8925_ALARM0_SEC, TIME_NUM, buf);
 if (ret < 0)
  goto out;
 ret = tm_calc(&alrm->time, buf, TIME_NUM);
 if (ret < 0)
  goto out;
 ret = max8925_reg_read(info->rtc, MAX8925_RTC_IRQ_MASK);
 if (ret < 0)
  goto out;
 if (ret & ALARM0_IRQ) {
  alrm->enabled = 0;
 } else {
  ret = max8925_reg_read(info->rtc, MAX8925_ALARM0_CNTL);
  if (ret < 0)
   goto out;
  if (!ret)
   alrm->enabled = 0;
  else
   alrm->enabled = 1;
 }
 ret = max8925_reg_read(info->rtc, MAX8925_RTC_STATUS);
 if (ret < 0)
  goto out;
 if (ret & ALARM0_STATUS)
  alrm->pending = 1;
 else
  alrm->pending = 0;
 return 0;
out:
 return ret;
}
