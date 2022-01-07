
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct lp872x {int dev; int regmap; } ;


 int dev_err (int ,char*,scalar_t__) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;

__attribute__((used)) static int lp872x_read_byte(struct lp872x *lp, u8 addr, u8 *data)
{
 int ret;
 unsigned int val;

 ret = regmap_read(lp->regmap, addr, &val);
 if (ret < 0) {
  dev_err(lp->dev, "failed to read 0x%.2x\n", addr);
  return ret;
 }

 *data = (u8)val;
 return 0;
}
