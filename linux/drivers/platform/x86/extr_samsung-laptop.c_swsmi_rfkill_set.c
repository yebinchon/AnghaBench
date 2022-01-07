
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_rfkill {scalar_t__ type; struct samsung_laptop* samsung; } ;
struct samsung_laptop {TYPE_1__* config; } ;
struct sabi_data {int* data; } ;
struct sabi_commands {int set_wireless_status; } ;
struct TYPE_2__ {struct sabi_commands commands; } ;


 scalar_t__ RFKILL_TYPE_BLUETOOTH ;
 scalar_t__ RFKILL_TYPE_WLAN ;
 size_t WL_STATUS_BT ;
 size_t WL_STATUS_WLAN ;
 int sabi_command (struct samsung_laptop*,int ,struct sabi_data*,struct sabi_data*) ;
 int swsmi_wireless_status (struct samsung_laptop*,struct sabi_data*) ;

__attribute__((used)) static int swsmi_rfkill_set(void *priv, bool blocked)
{
 struct samsung_rfkill *srfkill = priv;
 struct samsung_laptop *samsung = srfkill->samsung;
 const struct sabi_commands *commands = &samsung->config->commands;
 struct sabi_data data;
 int ret, i;

 ret = swsmi_wireless_status(samsung, &data);
 if (ret)
  return ret;


 for (i = 0; i < 4; i++)
  if (data.data[i] == 0x02)
   data.data[1] = 0;

 if (srfkill->type == RFKILL_TYPE_WLAN)
  data.data[WL_STATUS_WLAN] = !blocked;
 else if (srfkill->type == RFKILL_TYPE_BLUETOOTH)
  data.data[WL_STATUS_BT] = !blocked;

 return sabi_command(samsung, commands->set_wireless_status,
       &data, &data);
}
