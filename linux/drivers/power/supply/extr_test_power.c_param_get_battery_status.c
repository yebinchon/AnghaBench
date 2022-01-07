
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int battery_status ;
 int map_get_key (int ,int ,char*) ;
 int map_status ;
 int strcpy (char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int param_get_battery_status(char *buffer, const struct kernel_param *kp)
{
 strcpy(buffer, map_get_key(map_status, battery_status, "unknown"));
 return strlen(buffer);
}
