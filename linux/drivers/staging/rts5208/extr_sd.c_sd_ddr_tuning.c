
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int sd_ctl; scalar_t__ sd_ddr_tx_phase; } ;


 int SD_DDR_TX_PHASE_SET_BY_USER ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int TUNE_TX ;
 int sd_change_phase (struct rtsx_chip*,int ,int ) ;
 int sd_ddr_pre_tuning_tx (struct rtsx_chip*) ;
 int sd_tuning_rx (struct rtsx_chip*) ;
 int sd_tuning_tx (struct rtsx_chip*) ;

__attribute__((used)) static int sd_ddr_tuning(struct rtsx_chip *chip)
{
 int retval;

 if (!(chip->sd_ctl & SD_DDR_TX_PHASE_SET_BY_USER)) {
  retval = sd_ddr_pre_tuning_tx(chip);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 } else {
  retval = sd_change_phase(chip, (u8)chip->sd_ddr_tx_phase,
      TUNE_TX);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 }

 retval = sd_tuning_rx(chip);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 if (!(chip->sd_ctl & SD_DDR_TX_PHASE_SET_BY_USER)) {
  retval = sd_tuning_tx(chip);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}
