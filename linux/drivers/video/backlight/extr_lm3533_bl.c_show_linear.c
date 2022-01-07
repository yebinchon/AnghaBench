
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_bl {int lm3533; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM3533_REG_CTRLBANK_AB_BCONF ;
 int PAGE_SIZE ;
 struct lm3533_bl* dev_get_drvdata (struct device*) ;
 int lm3533_bl_get_ctrlbank_id (struct lm3533_bl*) ;
 int lm3533_read (int ,int ,int*) ;
 int scnprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t show_linear(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct lm3533_bl *bl = dev_get_drvdata(dev);
 u8 val;
 u8 mask;
 int linear;
 int ret;

 ret = lm3533_read(bl->lm3533, LM3533_REG_CTRLBANK_AB_BCONF, &val);
 if (ret)
  return ret;

 mask = 1 << (2 * lm3533_bl_get_ctrlbank_id(bl) + 1);

 if (val & mask)
  linear = 1;
 else
  linear = 0;

 return scnprintf(buf, PAGE_SIZE, "%x\n", linear);
}
