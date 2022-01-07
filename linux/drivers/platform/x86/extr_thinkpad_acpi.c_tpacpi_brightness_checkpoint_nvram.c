
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ TPACPI_BRGHT_MODE_ECNVRAM ;
 int TPACPI_DBG_BRGHT ;
 int TP_EC_BACKLIGHT ;
 int TP_EC_BACKLIGHT_LVLMSK ;
 int TP_NVRAM_ADDR_BRIGHTNESS ;
 int TP_NVRAM_MASK_LEVEL_BRIGHTNESS ;
 int TP_NVRAM_POS_LEVEL_BRIGHTNESS ;
 int acpi_ec_read (int ,int*) ;
 scalar_t__ brightness_mode ;
 int brightness_mutex ;
 int dbg_printk (int ,char*,unsigned int,unsigned int) ;
 scalar_t__ mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 int nvram_read_byte (int ) ;
 int nvram_write_byte (int,int ) ;
 scalar_t__ unlikely (int) ;
 int vdbg_printk (int ,char*,...) ;

__attribute__((used)) static void tpacpi_brightness_checkpoint_nvram(void)
{
 u8 lec = 0;
 u8 b_nvram;

 if (brightness_mode != TPACPI_BRGHT_MODE_ECNVRAM)
  return;

 vdbg_printk(TPACPI_DBG_BRGHT,
  "trying to checkpoint backlight level to NVRAM...\n");

 if (mutex_lock_killable(&brightness_mutex) < 0)
  return;

 if (unlikely(!acpi_ec_read(TP_EC_BACKLIGHT, &lec)))
  goto unlock;
 lec &= TP_EC_BACKLIGHT_LVLMSK;
 b_nvram = nvram_read_byte(TP_NVRAM_ADDR_BRIGHTNESS);

 if (lec != ((b_nvram & TP_NVRAM_MASK_LEVEL_BRIGHTNESS)
        >> TP_NVRAM_POS_LEVEL_BRIGHTNESS)) {

  b_nvram &= ~(TP_NVRAM_MASK_LEVEL_BRIGHTNESS <<
    TP_NVRAM_POS_LEVEL_BRIGHTNESS);
  b_nvram |= lec;
  nvram_write_byte(b_nvram, TP_NVRAM_ADDR_BRIGHTNESS);
  dbg_printk(TPACPI_DBG_BRGHT,
      "updated NVRAM backlight level to %u (0x%02x)\n",
      (unsigned int) lec, (unsigned int) b_nvram);
 } else
  vdbg_printk(TPACPI_DBG_BRGHT,
      "NVRAM backlight level already is %u (0x%02x)\n",
      (unsigned int) lec, (unsigned int) b_nvram);

unlock:
 mutex_unlock(&brightness_mutex);
}
