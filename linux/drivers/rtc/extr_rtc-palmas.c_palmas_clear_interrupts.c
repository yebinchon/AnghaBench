
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas {int dummy; } ;
struct device {int parent; } ;


 int PALMAS_RTC_BASE ;
 int PALMAS_RTC_STATUS_REG ;
 int dev_err (struct device*,char*,int) ;
 struct palmas* dev_get_drvdata (int ) ;
 int palmas_read (struct palmas*,int ,int ,unsigned int*) ;
 int palmas_write (struct palmas*,int ,int ,unsigned int) ;

__attribute__((used)) static int palmas_clear_interrupts(struct device *dev)
{
 struct palmas *palmas = dev_get_drvdata(dev->parent);
 unsigned int rtc_reg;
 int ret;

 ret = palmas_read(palmas, PALMAS_RTC_BASE, PALMAS_RTC_STATUS_REG,
    &rtc_reg);
 if (ret < 0) {
  dev_err(dev, "RTC_STATUS read failed, err = %d\n", ret);
  return ret;
 }

 ret = palmas_write(palmas, PALMAS_RTC_BASE, PALMAS_RTC_STATUS_REG,
   rtc_reg);
 if (ret < 0) {
  dev_err(dev, "RTC_STATUS write failed, err = %d\n", ret);
  return ret;
 }
 return 0;
}
