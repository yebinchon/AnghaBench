
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct odm_dm_struct {scalar_t__ AntDivType; } ;


 scalar_t__ CGCS_RX_HW_ANTDIV ;
 scalar_t__ CG_TRX_HW_ANTDIV ;
 scalar_t__ CG_TRX_SMART_ANTDIV ;
 int dm_fast_training_init (struct odm_dm_struct*) ;
 int dm_rx_hw_antena_div_init (struct odm_dm_struct*) ;
 int dm_trx_hw_antenna_div_init (struct odm_dm_struct*) ;

void rtl88eu_dm_antenna_div_init(struct odm_dm_struct *dm_odm)
{
 if (dm_odm->AntDivType == CGCS_RX_HW_ANTDIV)
  dm_rx_hw_antena_div_init(dm_odm);
 else if (dm_odm->AntDivType == CG_TRX_HW_ANTDIV)
  dm_trx_hw_antenna_div_init(dm_odm);
 else if (dm_odm->AntDivType == CG_TRX_SMART_ANTDIV)
  dm_fast_training_init(dm_odm);
}
