
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rockchip_iodomain {int dev; int grf; TYPE_1__* supplies; } ;
struct TYPE_2__ {int reg; } ;


 int RK3328_SOC_CON4 ;
 int RK3328_SOC_CON4_VCCIO2 ;
 size_t RK3328_SOC_VCCIO2_SUPPLY_NUM ;
 int dev_warn (int ,char*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void rk3328_iodomain_init(struct rockchip_iodomain *iod)
{
 int ret;
 u32 val;


 if (!iod->supplies[RK3328_SOC_VCCIO2_SUPPLY_NUM].reg)
  return;





 val = RK3328_SOC_CON4_VCCIO2 | (RK3328_SOC_CON4_VCCIO2 << 16);
 ret = regmap_write(iod->grf, RK3328_SOC_CON4, val);
 if (ret < 0)
  dev_warn(iod->dev, "couldn't update vccio2 vsel ctrl\n");
}
