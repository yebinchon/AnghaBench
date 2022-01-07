
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct NvRamType {int max_tag; int delay_time; int channel_cfg; TYPE_1__* target; int scsi_id; } ;
struct TYPE_2__ {size_t period; int cfg0; } ;


 int KERN_INFO ;
 int* clock_speed ;
 int dprintkl (int ,char*,int ,int,int,int,...) ;

__attribute__((used)) static void print_eeprom_settings(struct NvRamType *eeprom)
{
 dprintkl(KERN_INFO, "Used settings: AdapterID=%02i, Speed=%i(%02i.%01iMHz), dev_mode=0x%02x\n",
  eeprom->scsi_id,
  eeprom->target[0].period,
  clock_speed[eeprom->target[0].period] / 10,
  clock_speed[eeprom->target[0].period] % 10,
  eeprom->target[0].cfg0);
 dprintkl(KERN_INFO, "               AdaptMode=0x%02x, Tags=%i(%02i), DelayReset=%is\n",
  eeprom->channel_cfg, eeprom->max_tag,
  1 << eeprom->max_tag, eeprom->delay_time);
}
