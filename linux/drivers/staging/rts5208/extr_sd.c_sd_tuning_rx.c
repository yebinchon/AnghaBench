
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sd_info {int dummy; } ;
struct rtsx_chip {struct sd_info sd_card; } ;


 scalar_t__ CHK_MMC_DDR52 (struct sd_info*) ;
 scalar_t__ CHK_SD (struct sd_info*) ;
 scalar_t__ CHK_SD_DDR50 (struct sd_info*) ;
 int MAX_PHASE ;
 int SD_CARD ;
 int SD_NO_CARD ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int TUNE_RX ;
 int detect_card_cd (struct rtsx_chip*,int ) ;
 int dev_dbg (int ,char*,int,...) ;
 int mmc_ddr_tuning_rx_cmd (struct rtsx_chip*,int) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int sd_change_phase (struct rtsx_chip*,int,int ) ;
 int sd_ddr_tuning_rx_cmd (struct rtsx_chip*,int) ;
 int sd_sdr_tuning_rx_cmd (struct rtsx_chip*,int) ;
 int sd_search_final_phase (struct rtsx_chip*,int,int ) ;
 int sd_set_err_code (struct rtsx_chip*,int ) ;

__attribute__((used)) static int sd_tuning_rx(struct rtsx_chip *chip)
{
 struct sd_info *sd_card = &chip->sd_card;
 int retval;
 int i, j;
 u32 raw_phase_map[3], phase_map;
 u8 final_phase;
 int (*tuning_cmd)(struct rtsx_chip *chip, u8 sample_point);

 if (CHK_SD(sd_card)) {
  if (CHK_SD_DDR50(sd_card))
   tuning_cmd = sd_ddr_tuning_rx_cmd;
  else
   tuning_cmd = sd_sdr_tuning_rx_cmd;

 } else {
  if (CHK_MMC_DDR52(sd_card))
   tuning_cmd = mmc_ddr_tuning_rx_cmd;
  else
   return STATUS_FAIL;
 }

 for (i = 0; i < 3; i++) {
  raw_phase_map[i] = 0;
  for (j = MAX_PHASE; j >= 0; j--) {
   if (detect_card_cd(chip, SD_CARD) != STATUS_SUCCESS) {
    sd_set_err_code(chip, SD_NO_CARD);
    return STATUS_FAIL;
   }

   retval = tuning_cmd(chip, (u8)j);
   if (retval == STATUS_SUCCESS)
    raw_phase_map[i] |= 1 << j;
  }
 }

 phase_map = raw_phase_map[0] & raw_phase_map[1] & raw_phase_map[2];
 for (i = 0; i < 3; i++)
  dev_dbg(rtsx_dev(chip), "RX raw_phase_map[%d] = 0x%08x\n",
   i, raw_phase_map[i]);

 dev_dbg(rtsx_dev(chip), "RX phase_map = 0x%08x\n", phase_map);

 final_phase = sd_search_final_phase(chip, phase_map, TUNE_RX);
 if (final_phase == 0xFF)
  return STATUS_FAIL;

 retval = sd_change_phase(chip, final_phase, TUNE_RX);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
