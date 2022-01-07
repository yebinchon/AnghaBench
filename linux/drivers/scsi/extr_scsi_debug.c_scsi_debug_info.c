
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int SDEBUG_INFO_LEN ;
 int SDEBUG_VERSION ;
 int my_name ;
 int scnprintf (char const*,int,char*,int ,int ,int ,...) ;
 int sdebug_dev_size_mb ;
 char const* sdebug_info ;
 int sdebug_opts ;
 scalar_t__ sdebug_statistics ;
 int sdebug_version_date ;
 int submit_queues ;

__attribute__((used)) static const char *scsi_debug_info(struct Scsi_Host *shp)
{
 int k;

 k = scnprintf(sdebug_info, SDEBUG_INFO_LEN, "%s: version %s [%s]\n",
        my_name, SDEBUG_VERSION, sdebug_version_date);
 if (k >= (SDEBUG_INFO_LEN - 1))
  return sdebug_info;
 scnprintf(sdebug_info + k, SDEBUG_INFO_LEN - k,
    "  dev_size_mb=%d, opts=0x%x, submit_queues=%d, %s=%d",
    sdebug_dev_size_mb, sdebug_opts, submit_queues,
    "statistics", (int)sdebug_statistics);
 return sdebug_info;
}
