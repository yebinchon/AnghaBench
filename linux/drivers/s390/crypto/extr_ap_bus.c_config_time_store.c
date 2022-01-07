
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int HZ ;
 int ap_config_time ;
 int ap_config_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t config_time_store(struct bus_type *bus,
     const char *buf, size_t count)
{
 int time;

 if (sscanf(buf, "%d\n", &time) != 1 || time < 5 || time > 120)
  return -EINVAL;
 ap_config_time = time;
 mod_timer(&ap_config_timer, jiffies + ap_config_time * HZ);
 return count;
}
