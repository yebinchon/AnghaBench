
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv3028_data {int regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 int RV3028_EVT_CTRL ;
 int RV3028_EVT_CTRL_TSR ;
 struct rv3028_data* dev_get_drvdata (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static ssize_t timestamp0_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct rv3028_data *rv3028 = dev_get_drvdata(dev->parent);

 regmap_update_bits(rv3028->regmap, RV3028_EVT_CTRL, RV3028_EVT_CTRL_TSR,
      RV3028_EVT_CTRL_TSR);

 return count;
}
