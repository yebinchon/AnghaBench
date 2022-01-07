
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pm_domain {int num_qos; int ** qos_save_regs; int * qos_regmap; } ;


 int QOS_BANDWIDTH ;
 int QOS_EXTCONTROL ;
 int QOS_MODE ;
 int QOS_PRIORITY ;
 int QOS_SATURATION ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static int rockchip_pmu_save_qos(struct rockchip_pm_domain *pd)
{
 int i;

 for (i = 0; i < pd->num_qos; i++) {
  regmap_read(pd->qos_regmap[i],
       QOS_PRIORITY,
       &pd->qos_save_regs[0][i]);
  regmap_read(pd->qos_regmap[i],
       QOS_MODE,
       &pd->qos_save_regs[1][i]);
  regmap_read(pd->qos_regmap[i],
       QOS_BANDWIDTH,
       &pd->qos_save_regs[2][i]);
  regmap_read(pd->qos_regmap[i],
       QOS_SATURATION,
       &pd->qos_save_regs[3][i]);
  regmap_read(pd->qos_regmap[i],
       QOS_EXTCONTROL,
       &pd->qos_save_regs[4][i]);
 }
 return 0;
}
