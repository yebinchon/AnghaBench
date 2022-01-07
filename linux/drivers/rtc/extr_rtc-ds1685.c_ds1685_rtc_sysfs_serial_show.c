
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds1685_priv {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 struct ds1685_priv* dev_get_drvdata (int ) ;
 int ds1685_rtc_get_ssn (struct ds1685_priv*,int *) ;
 int ds1685_rtc_switch_to_bank0 (struct ds1685_priv*) ;
 int ds1685_rtc_switch_to_bank1 (struct ds1685_priv*) ;
 int sprintf (char*,char*,int *) ;

__attribute__((used)) static ssize_t
ds1685_rtc_sysfs_serial_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct ds1685_priv *rtc = dev_get_drvdata(dev->parent);
 u8 ssn[8];

 ds1685_rtc_switch_to_bank1(rtc);
 ds1685_rtc_get_ssn(rtc, ssn);
 ds1685_rtc_switch_to_bank0(rtc);

 return sprintf(buf, "%8phC\n", ssn);
}
