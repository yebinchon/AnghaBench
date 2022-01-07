
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rockchip_iodomain {int dev; int grf; TYPE_1__* supplies; } ;
struct TYPE_2__ {int reg; } ;


 int RK3399_PMUGRF_CON0 ;
 int RK3399_PMUGRF_CON0_VSEL ;
 size_t RK3399_PMUGRF_VSEL_SUPPLY_NUM ;
 int dev_warn (int ,char*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void rk3399_pmu_iodomain_init(struct rockchip_iodomain *iod)
{
 int ret;
 u32 val;


 if (!iod->supplies[RK3399_PMUGRF_VSEL_SUPPLY_NUM].reg)
  return;





 val = RK3399_PMUGRF_CON0_VSEL | (RK3399_PMUGRF_CON0_VSEL << 16);
 ret = regmap_write(iod->grf, RK3399_PMUGRF_CON0, val);
 if (ret < 0)
  dev_warn(iod->dev, "couldn't update pmu io iodomain ctrl\n");
}
