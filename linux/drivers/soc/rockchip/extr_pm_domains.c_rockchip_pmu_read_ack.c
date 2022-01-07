
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_pmu {TYPE_1__* info; int regmap; } ;
struct TYPE_2__ {int ack_offset; } ;


 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned int rockchip_pmu_read_ack(struct rockchip_pmu *pmu)
{
 unsigned int val;

 regmap_read(pmu->regmap, pmu->info->ack_offset, &val);
 return val;
}
