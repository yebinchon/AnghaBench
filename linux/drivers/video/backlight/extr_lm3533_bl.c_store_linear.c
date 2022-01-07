
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_bl {int lm3533; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int LM3533_REG_CTRLBANK_AB_BCONF ;
 struct lm3533_bl* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 int lm3533_bl_get_ctrlbank_id (struct lm3533_bl*) ;
 int lm3533_update (int ,int ,int,int) ;

__attribute__((used)) static ssize_t store_linear(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t len)
{
 struct lm3533_bl *bl = dev_get_drvdata(dev);
 unsigned long linear;
 u8 mask;
 u8 val;
 int ret;

 if (kstrtoul(buf, 0, &linear))
  return -EINVAL;

 mask = 1 << (2 * lm3533_bl_get_ctrlbank_id(bl) + 1);

 if (linear)
  val = mask;
 else
  val = 0;

 ret = lm3533_update(bl->lm3533, LM3533_REG_CTRLBANK_AB_BCONF, val,
         mask);
 if (ret)
  return ret;

 return len;
}
