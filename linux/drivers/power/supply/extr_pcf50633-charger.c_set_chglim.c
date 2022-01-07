
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcf50633_mbc {TYPE_2__* pcf; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* pdata; } ;
struct TYPE_3__ {unsigned long charger_reference_current_ma; } ;


 int ENODEV ;
 int PCF50633_REG_MBCC5 ;
 struct pcf50633_mbc* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int pcf50633_reg_write (TYPE_2__*,int ,unsigned int) ;

__attribute__((used)) static ssize_t set_chglim(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct pcf50633_mbc *mbc = dev_get_drvdata(dev);
 unsigned long ma;
 unsigned int mbcc5;
 int ret;

 if (!mbc->pcf->pdata->charger_reference_current_ma)
  return -ENODEV;

 ret = kstrtoul(buf, 10, &ma);
 if (ret)
  return ret;

 mbcc5 = (ma << 8) / mbc->pcf->pdata->charger_reference_current_ma;
 if (mbcc5 > 255)
  mbcc5 = 255;
 pcf50633_reg_write(mbc->pcf, PCF50633_REG_MBCC5, mbcc5);

 return count;
}
