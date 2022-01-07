
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rv3029_data {int regmap; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ RV3029_USR1_RAM_PAGE ;
 struct rv3029_data* dev_get_drvdata (struct device*) ;
 int regmap_bulk_read (int ,scalar_t__,scalar_t__*,unsigned int) ;

__attribute__((used)) static int rv3029_read_regs(struct device *dev, u8 reg, u8 *buf,
       unsigned int len)
{
 struct rv3029_data *rv3029 = dev_get_drvdata(dev);

 if ((reg > RV3029_USR1_RAM_PAGE + 7) ||
     (reg + len > RV3029_USR1_RAM_PAGE + 8))
  return -EINVAL;

 return regmap_bulk_read(rv3029->regmap, reg, buf, len);
}
