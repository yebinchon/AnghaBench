
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int AUTO ;
 int PAGE_SIZE ;
 int SPEED ;
 int STAMINA ;
 int __sony_nc_gfx_switch_status_get () ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t sony_nc_gfx_switch_status_show(struct device *dev,
           struct device_attribute *attr,
           char *buffer)
{
 int pos = __sony_nc_gfx_switch_status_get();

 if (pos < 0)
  return pos;

 return snprintf(buffer, PAGE_SIZE, "%s\n",
     pos == SPEED ? "speed" :
     pos == STAMINA ? "stamina" :
     pos == AUTO ? "auto" : "unknown");
}
