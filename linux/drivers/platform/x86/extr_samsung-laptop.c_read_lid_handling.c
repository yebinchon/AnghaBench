
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_laptop {TYPE_1__* config; } ;
struct sabi_data {int* data; } ;
struct sabi_commands {int get_lid_handling; } ;
typedef int data ;
struct TYPE_2__ {struct sabi_commands commands; } ;


 int ENODEV ;
 int memset (struct sabi_data*,int ,int) ;
 int sabi_command (struct samsung_laptop*,int,struct sabi_data*,struct sabi_data*) ;

__attribute__((used)) static int read_lid_handling(struct samsung_laptop *samsung)
{
 const struct sabi_commands *commands = &samsung->config->commands;
 struct sabi_data data;
 int retval;

 if (commands->get_lid_handling == 0xFFFF)
  return -ENODEV;

 memset(&data, 0, sizeof(data));
 retval = sabi_command(samsung, commands->get_lid_handling,
         &data, &data);

 if (retval)
  return retval;

 return data.data[0] & 0x1;
}
