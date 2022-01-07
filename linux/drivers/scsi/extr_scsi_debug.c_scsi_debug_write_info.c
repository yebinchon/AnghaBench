
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int CAP_SYS_RAWIO ;
 int EACCES ;
 int EINVAL ;
 int SDEBUG_OPT_ALL_INJECTING ;
 int SDEBUG_OPT_NOISE ;
 int capable (int ) ;
 int memcpy (char*,char*,int) ;
 int sdebug_any_injecting_opt ;
 scalar_t__ sdebug_every_nth ;
 int sdebug_opts ;
 int sdebug_verbose ;
 int sscanf (char*,char*,int*) ;
 int tweak_cmnd_count () ;

__attribute__((used)) static int scsi_debug_write_info(struct Scsi_Host *host, char *buffer,
     int length)
{
 char arr[16];
 int opts;
 int minLen = length > 15 ? 15 : length;

 if (!capable(CAP_SYS_ADMIN) || !capable(CAP_SYS_RAWIO))
  return -EACCES;
 memcpy(arr, buffer, minLen);
 arr[minLen] = '\0';
 if (1 != sscanf(arr, "%d", &opts))
  return -EINVAL;
 sdebug_opts = opts;
 sdebug_verbose = !!(SDEBUG_OPT_NOISE & opts);
 sdebug_any_injecting_opt = !!(SDEBUG_OPT_ALL_INJECTING & opts);
 if (sdebug_every_nth != 0)
  tweak_cmnd_count();
 return length;
}
