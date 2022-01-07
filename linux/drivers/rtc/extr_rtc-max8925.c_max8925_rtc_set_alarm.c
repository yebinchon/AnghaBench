
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct max8925_rtc_info {int rtc; } ;
struct device {int dummy; } ;


 int MAX8925_ALARM0_CNTL ;
 int MAX8925_ALARM0_SEC ;
 int TIME_NUM ;
 int data_calc (unsigned char*,int *,int) ;
 struct max8925_rtc_info* dev_get_drvdata (struct device*) ;
 int max8925_bulk_write (int ,int ,int,unsigned char*) ;
 int max8925_reg_write (int ,int ,int) ;

__attribute__((used)) static int max8925_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct max8925_rtc_info *info = dev_get_drvdata(dev);
 unsigned char buf[TIME_NUM];
 int ret;

 ret = data_calc(buf, &alrm->time, TIME_NUM);
 if (ret < 0)
  goto out;
 ret = max8925_bulk_write(info->rtc, MAX8925_ALARM0_SEC, TIME_NUM, buf);
 if (ret < 0)
  goto out;
 if (alrm->enabled)

  ret = max8925_reg_write(info->rtc, MAX8925_ALARM0_CNTL, 0x77);
 else
  ret = max8925_reg_write(info->rtc, MAX8925_ALARM0_CNTL, 0x0);
out:
 return ret;
}
