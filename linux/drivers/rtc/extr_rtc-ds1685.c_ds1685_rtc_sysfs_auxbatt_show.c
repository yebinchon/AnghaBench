
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds1685_priv {int (* read ) (struct ds1685_priv*,int ) ;} ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int RTC_CTRL_4A_VRT2 ;
 int RTC_EXT_CTRL_4A ;
 struct ds1685_priv* dev_get_drvdata (int ) ;
 int ds1685_rtc_switch_to_bank0 (struct ds1685_priv*) ;
 int ds1685_rtc_switch_to_bank1 (struct ds1685_priv*) ;
 int sprintf (char*,char*,char*) ;
 int stub1 (struct ds1685_priv*,int ) ;

__attribute__((used)) static ssize_t
ds1685_rtc_sysfs_auxbatt_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct ds1685_priv *rtc = dev_get_drvdata(dev->parent);
 u8 ctrl4a;

 ds1685_rtc_switch_to_bank1(rtc);
 ctrl4a = rtc->read(rtc, RTC_EXT_CTRL_4A);
 ds1685_rtc_switch_to_bank0(rtc);

 return sprintf(buf, "%s\n",
   (ctrl4a & RTC_CTRL_4A_VRT2) ? "ok" : "not ok or N/A");
}
