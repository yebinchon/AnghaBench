
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const u32 ;
struct qcom_rpm_reg {TYPE_1__* parts; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int freq; } ;


 int ARRAY_SIZE (int const*) ;
 int EINVAL ;
 int dev_err (struct device*,char*,...) ;
 int of_property_read_u32 (struct device_node*,char const*,int const*) ;
 int rpm_reg_set (struct qcom_rpm_reg*,int *,int) ;

__attribute__((used)) static int rpm_reg_of_parse_freq(struct device *dev,
     struct device_node *node,
     struct qcom_rpm_reg *vreg)
{
 static const int freq_table[] = {
  19200000, 9600000, 6400000, 4800000, 3840000, 3200000, 2740000,
  2400000, 2130000, 1920000, 1750000, 1600000, 1480000, 1370000,
  1280000, 1200000,

 };
 const char *key;
 u32 freq;
 int ret;
 int i;

 key = "qcom,switch-mode-frequency";
 ret = of_property_read_u32(node, key, &freq);
 if (ret) {
  dev_err(dev, "regulator requires %s property\n", key);
  return -EINVAL;
 }

 for (i = 0; i < ARRAY_SIZE(freq_table); i++) {
  if (freq == freq_table[i]) {
   rpm_reg_set(vreg, &vreg->parts->freq, i + 1);
   return 0;
  }
 }

 dev_err(dev, "invalid frequency %d\n", freq);
 return -EINVAL;
}
