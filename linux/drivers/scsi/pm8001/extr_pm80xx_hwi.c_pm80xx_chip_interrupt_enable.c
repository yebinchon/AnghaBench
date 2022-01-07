
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pm8001_hba_info {int dummy; } ;


 int MSGU_ODMR_CLR ;
 int pm8001_cw32 (struct pm8001_hba_info*,int ,int ,int) ;
 int pm80xx_chip_intx_interrupt_enable (struct pm8001_hba_info*) ;

__attribute__((used)) static void
pm80xx_chip_interrupt_enable(struct pm8001_hba_info *pm8001_ha, u8 vec)
{







 pm80xx_chip_intx_interrupt_enable(pm8001_ha);

}
