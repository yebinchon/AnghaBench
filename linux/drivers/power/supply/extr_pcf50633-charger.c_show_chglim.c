
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pcf50633_mbc {TYPE_2__* pcf; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* pdata; } ;
struct TYPE_3__ {int charger_reference_current_ma; } ;


 int ENODEV ;
 int PCF50633_REG_MBCC5 ;
 struct pcf50633_mbc* dev_get_drvdata (struct device*) ;
 int pcf50633_reg_read (TYPE_2__*,int ) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static ssize_t
show_chglim(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct pcf50633_mbc *mbc = dev_get_drvdata(dev);
 u8 mbcc5 = pcf50633_reg_read(mbc->pcf, PCF50633_REG_MBCC5);
 unsigned int ma;

 if (!mbc->pcf->pdata->charger_reference_current_ma)
  return -ENODEV;

 ma = (mbc->pcf->pdata->charger_reference_current_ma * mbcc5) >> 8;

 return sprintf(buf, "%u\n", ma);
}
