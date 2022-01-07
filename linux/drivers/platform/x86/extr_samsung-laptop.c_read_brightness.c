
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_laptop {struct sabi_config* config; } ;
struct sabi_data {int* data; } ;
struct sabi_commands {int get_brightness; } ;
struct sabi_config {int min_brightness; struct sabi_commands commands; } ;


 int sabi_command (struct samsung_laptop*,int ,int *,struct sabi_data*) ;

__attribute__((used)) static int read_brightness(struct samsung_laptop *samsung)
{
 const struct sabi_config *config = samsung->config;
 const struct sabi_commands *commands = &samsung->config->commands;
 struct sabi_data sretval;
 int user_brightness = 0;
 int retval;

 retval = sabi_command(samsung, commands->get_brightness,
         ((void*)0), &sretval);
 if (retval)
  return retval;

 user_brightness = sretval.data[0];
 if (user_brightness > config->min_brightness)
  user_brightness -= config->min_brightness;
 else
  user_brightness = 0;

 return user_brightness;
}
