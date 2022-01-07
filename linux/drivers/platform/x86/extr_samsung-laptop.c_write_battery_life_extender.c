
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_laptop {TYPE_1__* config; } ;
struct sabi_data {int* data; } ;
struct sabi_commands {int set_battery_life_extender; } ;
typedef int data ;
struct TYPE_2__ {struct sabi_commands commands; } ;


 int memset (struct sabi_data*,int ,int) ;
 int sabi_command (struct samsung_laptop*,int ,struct sabi_data*,int *) ;

__attribute__((used)) static int write_battery_life_extender(struct samsung_laptop *samsung,
           int enabled)
{
 const struct sabi_commands *commands = &samsung->config->commands;
 struct sabi_data data;

 memset(&data, 0, sizeof(data));
 data.data[0] = 0x80 | enabled;
 return sabi_command(samsung, commands->set_battery_life_extender,
       &data, ((void*)0));
}
