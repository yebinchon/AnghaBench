
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_rfkill {struct samsung_laptop* samsung; } ;
struct samsung_laptop {TYPE_1__* config; } ;
struct sabi_commands {int set_wireless_button; } ;
struct TYPE_2__ {struct sabi_commands commands; } ;


 int sabi_set_commandb (struct samsung_laptop*,int ,int) ;

__attribute__((used)) static int seclinux_rfkill_set(void *data, bool blocked)
{
 struct samsung_rfkill *srfkill = data;
 struct samsung_laptop *samsung = srfkill->samsung;
 const struct sabi_commands *commands = &samsung->config->commands;

 return sabi_set_commandb(samsung, commands->set_wireless_button,
     !blocked);
}
