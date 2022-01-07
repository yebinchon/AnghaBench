
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {int lock; } ;


 int SAS2_SETTINGS_LOCAL_PHY_0_3_OFFSET ;
 int SAS2_SETTINGS_LOCAL_PHY_0_3_SHIFT_ADDR ;
 int SAS2_SETTINGS_LOCAL_PHY_4_7_OFFSET ;
 int SAS2_SETTINGS_LOCAL_PHY_4_7_SHIFT_ADDR ;
 int pm8001_bar4_shift (struct pm8001_hba_info*,int) ;
 int pm8001_cr32 (struct pm8001_hba_info*,int,int) ;
 int pm8001_cw32 (struct pm8001_hba_info*,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mpi_set_phys_g3_with_ssc(struct pm8001_hba_info *pm8001_ha,
         u32 SSCbit)
{
 u32 value, offset, i;
 unsigned long flags;
 spin_lock_irqsave(&pm8001_ha->lock, flags);
 if (-1 == pm8001_bar4_shift(pm8001_ha,
    0x00030000)) {
  spin_unlock_irqrestore(&pm8001_ha->lock, flags);
  return;
 }

 for (i = 0; i < 4; i++) {
  offset = 0x1074 + 0x4000 * i;
  pm8001_cw32(pm8001_ha, 2, offset, 0x80001501);
 }

 if (-1 == pm8001_bar4_shift(pm8001_ha,
    0x00040000)) {
  spin_unlock_irqrestore(&pm8001_ha->lock, flags);
  return;
 }
 for (i = 4; i < 8; i++) {
  offset = 0x1074 + 0x4000 * (i-4);
  pm8001_cw32(pm8001_ha, 2, offset, 0x80001501);
 }
 value = pm8001_cr32(pm8001_ha, 2, 0xd8);
 pm8001_cw32(pm8001_ha, 2, 0xd8, 0x8000C016);


 pm8001_bar4_shift(pm8001_ha, 0x0);
 spin_unlock_irqrestore(&pm8001_ha->lock, flags);
 return;
}
