
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pmc_dev {TYPE_1__* map; } ;
struct TYPE_2__ {int pm_read_disable_bit; int pm_cfg_offset; } ;


 int BIT (int ) ;
 struct pmc_dev pmc ;
 int pmc_core_reg_read (struct pmc_dev*,int ) ;

__attribute__((used)) static int pmc_core_check_read_lock_bit(void)
{
 struct pmc_dev *pmcdev = &pmc;
 u32 value;

 value = pmc_core_reg_read(pmcdev, pmcdev->map->pm_cfg_offset);
 return value & BIT(pmcdev->map->pm_read_disable_bit);
}
