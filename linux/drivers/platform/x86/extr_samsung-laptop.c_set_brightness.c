
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct samsung_laptop {scalar_t__ has_stepping_quirk; struct sabi_config* config; } ;
struct sabi_commands {int set_brightness; } ;
struct sabi_config {scalar_t__ min_brightness; struct sabi_commands commands; } ;


 scalar_t__ read_brightness (struct samsung_laptop*) ;
 int sabi_set_commandb (struct samsung_laptop*,int ,scalar_t__) ;

__attribute__((used)) static void set_brightness(struct samsung_laptop *samsung, u8 user_brightness)
{
 const struct sabi_config *config = samsung->config;
 const struct sabi_commands *commands = &samsung->config->commands;
 u8 user_level = user_brightness + config->min_brightness;

 if (samsung->has_stepping_quirk && user_level != 0) {




  if (user_brightness == read_brightness(samsung))
   return;

  sabi_set_commandb(samsung, commands->set_brightness, 0);
 }

 sabi_set_commandb(samsung, commands->set_brightness, user_level);
}
