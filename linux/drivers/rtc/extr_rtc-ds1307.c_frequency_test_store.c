
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1307 {int regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int M41TXX_BIT_FT ;
 int M41TXX_REG_CONTROL ;
 int dev_err (struct device*,char*) ;
 struct ds1307* dev_get_drvdata (int ) ;
 int kstrtobool (char const*,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static ssize_t frequency_test_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct ds1307 *ds1307 = dev_get_drvdata(dev->parent);
 bool freq_test_en;
 int ret;

 ret = kstrtobool(buf, &freq_test_en);
 if (ret) {
  dev_err(dev, "Failed to store RTC Frequency Test attribute\n");
  return ret;
 }

 regmap_update_bits(ds1307->regmap, M41TXX_REG_CONTROL, M41TXX_BIT_FT,
      freq_test_en ? M41TXX_BIT_FT : 0);

 return count;
}
