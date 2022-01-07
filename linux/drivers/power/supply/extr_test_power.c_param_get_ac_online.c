
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int ac_online ;
 int map_ac_online ;
 int map_get_key (int ,int ,char*) ;
 int strcpy (char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int param_get_ac_online(char *buffer, const struct kernel_param *kp)
{
 strcpy(buffer, map_get_key(map_ac_online, ac_online, "unknown"));
 return strlen(buffer);
}
