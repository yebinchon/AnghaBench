
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_laptop {TYPE_1__* config; } ;
struct sabi_data {int* data; } ;
struct sabi_commands {int get_battery_life_extender; } ;
typedef int data ;
struct TYPE_2__ {struct sabi_commands commands; } ;


 int ENODEV ;
 int memset (struct sabi_data*,int ,int) ;
 int sabi_command (struct samsung_laptop*,int,struct sabi_data*,struct sabi_data*) ;

__attribute__((used)) static int read_battery_life_extender(struct samsung_laptop *samsung)
{
 const struct sabi_commands *commands = &samsung->config->commands;
 struct sabi_data data;
 int retval;

 if (commands->get_battery_life_extender == 0xFFFF)
  return -ENODEV;

 memset(&data, 0, sizeof(data));
 data.data[0] = 0x80;
 retval = sabi_command(samsung, commands->get_battery_life_extender,
         &data, &data);

 if (retval)
  return retval;

 if (data.data[0] != 0 && data.data[0] != 1)
  return -ENODEV;

 return data.data[0];
}
