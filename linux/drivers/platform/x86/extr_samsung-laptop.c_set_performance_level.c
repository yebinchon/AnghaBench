
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_laptop {struct sabi_config* config; } ;
struct sabi_performance_level {scalar_t__ name; int value; } ;
struct sabi_commands {int set_performance_level; } ;
struct sabi_config {struct sabi_performance_level* performance_levels; struct sabi_commands commands; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct samsung_laptop* dev_get_drvdata (struct device*) ;
 int sabi_set_commandb (struct samsung_laptop*,int ,int ) ;
 int strlen (scalar_t__) ;
 int strncasecmp (scalar_t__,char const*,int ) ;

__attribute__((used)) static ssize_t set_performance_level(struct device *dev,
    struct device_attribute *attr, const char *buf,
    size_t count)
{
 struct samsung_laptop *samsung = dev_get_drvdata(dev);
 const struct sabi_config *config = samsung->config;
 const struct sabi_commands *commands = &config->commands;
 int i;

 if (count < 1)
  return count;

 for (i = 0; config->performance_levels[i].name; ++i) {
  const struct sabi_performance_level *level =
   &config->performance_levels[i];
  if (!strncasecmp(level->name, buf, strlen(level->name))) {
   sabi_set_commandb(samsung,
       commands->set_performance_level,
       level->value);
   break;
  }
 }

 if (!config->performance_levels[i].name)
  return -EINVAL;

 return count;
}
