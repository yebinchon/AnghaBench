
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axp288_fg_info {TYPE_1__* pdev; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int NR_RETRY_CNT ;
 int dev_err (int *,char*,int) ;
 int regmap_read (int ,int,unsigned int*) ;

__attribute__((used)) static int fuel_gauge_reg_readb(struct axp288_fg_info *info, int reg)
{
 int ret, i;
 unsigned int val;

 for (i = 0; i < NR_RETRY_CNT; i++) {
  ret = regmap_read(info->regmap, reg, &val);
  if (ret == -EBUSY)
   continue;
  else
   break;
 }

 if (ret < 0) {
  dev_err(&info->pdev->dev, "axp288 reg read err:%d\n", ret);
  return ret;
 }

 return val;
}
