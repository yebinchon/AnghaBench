
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_laptop {struct sabi_config* config; } ;
struct sabi_data {scalar_t__* data; } ;
struct sabi_commands {int get_performance_level; } ;
struct sabi_config {TYPE_1__* performance_levels; struct sabi_commands commands; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; scalar_t__ value; } ;


 struct samsung_laptop* dev_get_drvdata (struct device*) ;
 int sabi_command (struct samsung_laptop*,int ,int *,struct sabi_data*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t get_performance_level(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct samsung_laptop *samsung = dev_get_drvdata(dev);
 const struct sabi_config *config = samsung->config;
 const struct sabi_commands *commands = &config->commands;
 struct sabi_data sretval;
 int retval;
 int i;


 retval = sabi_command(samsung, commands->get_performance_level,
         ((void*)0), &sretval);
 if (retval)
  return retval;


 for (i = 0; config->performance_levels[i].name; ++i) {
  if (sretval.data[0] == config->performance_levels[i].value)
   return sprintf(buf, "%s\n", config->performance_levels[i].name);
 }
 return sprintf(buf, "%s\n", "unknown");
}
