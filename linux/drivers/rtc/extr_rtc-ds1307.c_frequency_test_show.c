
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1307 {int regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 unsigned int M41TXX_BIT_FT ;
 int M41TXX_REG_CONTROL ;
 int PAGE_SIZE ;
 struct ds1307* dev_get_drvdata (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int scnprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t frequency_test_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct ds1307 *ds1307 = dev_get_drvdata(dev->parent);
 unsigned int ctrl_reg;

 regmap_read(ds1307->regmap, M41TXX_REG_CONTROL, &ctrl_reg);

 return scnprintf(buf, PAGE_SIZE, (ctrl_reg & M41TXX_BIT_FT) ? "on\n" :
   "off\n");
}
