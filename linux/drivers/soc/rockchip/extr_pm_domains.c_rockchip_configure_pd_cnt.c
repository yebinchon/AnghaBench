
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rockchip_pmu {int regmap; } ;


 int regmap_write (int ,scalar_t__,unsigned int) ;

__attribute__((used)) static void rockchip_configure_pd_cnt(struct rockchip_pmu *pmu,
          u32 domain_reg_offset,
          unsigned int count)
{

 regmap_write(pmu->regmap, domain_reg_offset, count);

 regmap_write(pmu->regmap, domain_reg_offset + 4, count);
}
