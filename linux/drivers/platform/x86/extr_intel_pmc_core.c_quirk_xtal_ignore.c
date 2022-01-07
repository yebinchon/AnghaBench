
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pmc_dev {TYPE_1__* map; } ;
struct dmi_system_id {int dummy; } ;
struct TYPE_2__ {int pm_vric1_offset; } ;


 int SPT_PMC_VRIC1_SLPS0LVEN ;
 int SPT_PMC_VRIC1_XTALSDQDIS ;
 struct pmc_dev pmc ;
 int pmc_core_reg_read (struct pmc_dev*,int ) ;
 int pmc_core_reg_write (struct pmc_dev*,int ,int ) ;

__attribute__((used)) static int quirk_xtal_ignore(const struct dmi_system_id *id)
{
 struct pmc_dev *pmcdev = &pmc;
 u32 value;

 value = pmc_core_reg_read(pmcdev, pmcdev->map->pm_vric1_offset);

 value |= SPT_PMC_VRIC1_XTALSDQDIS;

 value &= ~SPT_PMC_VRIC1_SLPS0LVEN;
 pmc_core_reg_write(pmcdev, pmcdev->map->pm_vric1_offset, value);
 return 0;
}
