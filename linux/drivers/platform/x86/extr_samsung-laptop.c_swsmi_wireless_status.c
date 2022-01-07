
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_laptop {TYPE_1__* config; } ;
struct sabi_data {int dummy; } ;
struct sabi_commands {int get_wireless_status; } ;
struct TYPE_2__ {struct sabi_commands commands; } ;


 int sabi_command (struct samsung_laptop*,int ,int *,struct sabi_data*) ;

__attribute__((used)) static int swsmi_wireless_status(struct samsung_laptop *samsung,
     struct sabi_data *data)
{
 const struct sabi_commands *commands = &samsung->config->commands;

 return sabi_command(samsung, commands->get_wireless_status,
       ((void*)0), data);
}
