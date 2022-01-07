
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pmc_reg_map {int slp_s0_offset; } ;
struct pmc_dev {struct pmc_reg_map* map; } ;


 int pmc_core_adjust_slp_s0_step (int ) ;
 int pmc_core_reg_read (struct pmc_dev*,int ) ;

__attribute__((used)) static int pmc_core_dev_state_get(void *data, u64 *val)
{
 struct pmc_dev *pmcdev = data;
 const struct pmc_reg_map *map = pmcdev->map;
 u32 value;

 value = pmc_core_reg_read(pmcdev, map->slp_s0_offset);
 *val = pmc_core_adjust_slp_s0_step(value);

 return 0;
}
