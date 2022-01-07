
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct axp288_fg_info {TYPE_1__* pdev; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int regmap_write (int ,int,unsigned int) ;

__attribute__((used)) static int fuel_gauge_reg_writeb(struct axp288_fg_info *info, int reg, u8 val)
{
 int ret;

 ret = regmap_write(info->regmap, reg, (unsigned int)val);

 if (ret < 0)
  dev_err(&info->pdev->dev, "axp288 reg write err:%d\n", ret);

 return ret;
}
