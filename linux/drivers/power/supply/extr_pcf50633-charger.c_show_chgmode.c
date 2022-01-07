
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcf50633_mbc {int pcf; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PCF50633_MBCS2_MBC_MASK ;
 int PCF50633_REG_MBCS2 ;
 struct pcf50633_mbc* dev_get_drvdata (struct device*) ;
 int pcf50633_reg_read (int ,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
show_chgmode(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct pcf50633_mbc *mbc = dev_get_drvdata(dev);

 u8 mbcs2 = pcf50633_reg_read(mbc->pcf, PCF50633_REG_MBCS2);
 u8 chgmod = (mbcs2 & PCF50633_MBCS2_MBC_MASK);

 return sprintf(buf, "%d\n", chgmod);
}
