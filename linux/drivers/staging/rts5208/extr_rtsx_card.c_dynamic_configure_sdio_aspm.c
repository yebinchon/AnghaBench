
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {scalar_t__ sdio_counter; int sdio_idle; int sdio_aspm; int* aspm_level; int sdio_raw_data; } ;


 int ASPM_FORCE_CTL ;
 scalar_t__ SDIO_IDLE_COUNT ;
 int dev_dbg (int ,char*) ;
 scalar_t__ memcmp (int*,int ,int) ;
 int memcpy (int ,int*,int) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_read_register (struct rtsx_chip*,int,int*) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

void dynamic_configure_sdio_aspm(struct rtsx_chip *chip)
{
 u8 buf[12], reg;
 int i;

 for (i = 0; i < 12; i++)
  rtsx_read_register(chip, 0xFF08 + i, &buf[i]);
 rtsx_read_register(chip, 0xFF25, &reg);
 if ((memcmp(buf, chip->sdio_raw_data, 12) != 0) || (reg & 0x03)) {
  chip->sdio_counter = 0;
  chip->sdio_idle = 0;
 } else {
  if (!chip->sdio_idle) {
   chip->sdio_counter++;
   if (chip->sdio_counter >= SDIO_IDLE_COUNT) {
    chip->sdio_counter = 0;
    chip->sdio_idle = 1;
   }
  }
 }
 memcpy(chip->sdio_raw_data, buf, 12);

 if (chip->sdio_idle) {
  if (!chip->sdio_aspm) {
   dev_dbg(rtsx_dev(chip), "SDIO enter ASPM!\n");
   rtsx_write_register(chip, ASPM_FORCE_CTL, 0xFC,
         0x30 | (chip->aspm_level[1] << 2));
   chip->sdio_aspm = 1;
  }
 } else {
  if (chip->sdio_aspm) {
   dev_dbg(rtsx_dev(chip), "SDIO exit ASPM!\n");
   rtsx_write_register(chip, ASPM_FORCE_CTL, 0xFC, 0x30);
   chip->sdio_aspm = 0;
  }
 }
}
