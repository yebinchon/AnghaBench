
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint8_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adp8860_bl {int lock; int client; } ;
typedef int ssize_t ;


 int ADP8860_CFGR ;
 int ADP8860_MDCR ;
 unsigned long CFGR_BLV_MASK ;
 unsigned long CFGR_BLV_SHIFT ;
 int CMP_AUTOEN ;
 int adp8860_clr_bits (int ,int ,int ) ;
 int adp8860_read (int ,int ,unsigned long*) ;
 int adp8860_set_bits (int ,int ,int ) ;
 int adp8860_write (int ,int ,unsigned long) ;
 struct adp8860_bl* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t adp8860_bl_ambient_light_zone_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct adp8860_bl *data = dev_get_drvdata(dev);
 unsigned long val;
 uint8_t reg_val;
 int ret;

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return ret;

 if (val == 0) {

  adp8860_set_bits(data->client, ADP8860_MDCR, CMP_AUTOEN);
 } else if ((val > 0) && (val <= 3)) {

  adp8860_clr_bits(data->client, ADP8860_MDCR, CMP_AUTOEN);


  mutex_lock(&data->lock);
  ret = adp8860_read(data->client, ADP8860_CFGR, &reg_val);
  if (!ret) {
   reg_val &= ~(CFGR_BLV_MASK << CFGR_BLV_SHIFT);
   reg_val |= (val - 1) << CFGR_BLV_SHIFT;
   adp8860_write(data->client, ADP8860_CFGR, reg_val);
  }
  mutex_unlock(&data->lock);
 }

 return count;
}
