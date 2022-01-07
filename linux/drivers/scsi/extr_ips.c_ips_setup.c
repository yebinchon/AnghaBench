
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int member_2; int option_value; int * option_flag; int option_name; int * member_1; } ;
typedef TYPE_1__ IPS_OPTION ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int IPS_IOCTL_SIZE ;
 int MaxLiteCmds ;
 int ips_cd_boot ;
 int ips_force_i2o ;
 int ips_force_memio ;
 int ips_ioctlsize ;
 int simple_strtoul (char*,int *,int ) ;
 char* strchr (char*,char) ;
 int strlen (int ) ;
 scalar_t__ strncasecmp (char*,int ,int ) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
ips_setup(char *ips_str)
{

 int i;
 char *key;
 char *value;
 IPS_OPTION options[] = {
  {"noi2o", &ips_force_i2o, 0},
  {"nommap", &ips_force_memio, 0},
  {"ioctlsize", &ips_ioctlsize, IPS_IOCTL_SIZE},
  {"cdboot", &ips_cd_boot, 0},
  {"maxcmds", &MaxLiteCmds, 32},
 };



 while ((key = strsep(&ips_str, ",."))) {
  if (!*key)
   continue;
  value = strchr(key, ':');
  if (value)
   *value++ = '\0';




  for (i = 0; i < ARRAY_SIZE(options); i++) {
   if (strncasecmp
       (key, options[i].option_name,
        strlen(options[i].option_name)) == 0) {
    if (value)
     *options[i].option_flag =
         simple_strtoul(value, ((void*)0), 0);
    else
     *options[i].option_flag =
         options[i].option_value;
    break;
   }
  }
 }

 return (1);
}
