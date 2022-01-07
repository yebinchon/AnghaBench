
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pm8001_hba_info {int dummy; } ;


 int pm8001_chip_intx_interrupt_enable (struct pm8001_hba_info*) ;
 int pm8001_chip_msix_interrupt_enable (struct pm8001_hba_info*,int ) ;

__attribute__((used)) static void
pm8001_chip_interrupt_enable(struct pm8001_hba_info *pm8001_ha, u8 vec)
{



 pm8001_chip_intx_interrupt_enable(pm8001_ha);

}
