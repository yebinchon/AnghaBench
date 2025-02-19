
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; scalar_t__ min; scalar_t__ max; scalar_t__ def; } ;


 size_t CFG_ADAPTER_ID ;
 size_t CFG_ADAPTER_MODE ;
 size_t CFG_DEV_MODE ;
 size_t CFG_MAX_SPEED ;
 int CFG_NUM ;
 size_t CFG_RESET_DELAY ;
 size_t CFG_TAGS ;
 int DBG_1 ;
 TYPE_1__* cfg_data ;
 int dprintkdbg (int ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void fix_settings(void)
{
 int i;

 dprintkdbg(DBG_1,
  "setup: AdapterId=%08x MaxSpeed=%08x DevMode=%08x "
  "AdapterMode=%08x Tags=%08x ResetDelay=%08x\n",
  cfg_data[CFG_ADAPTER_ID].value,
  cfg_data[CFG_MAX_SPEED].value,
  cfg_data[CFG_DEV_MODE].value,
  cfg_data[CFG_ADAPTER_MODE].value,
  cfg_data[CFG_TAGS].value,
  cfg_data[CFG_RESET_DELAY].value);
 for (i = 0; i < CFG_NUM; i++)
 {
  if (cfg_data[i].value < cfg_data[i].min
      || cfg_data[i].value > cfg_data[i].max)
   cfg_data[i].value = cfg_data[i].def;
 }
}
