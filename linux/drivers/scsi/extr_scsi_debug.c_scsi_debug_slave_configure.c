
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdebug_dev_info {int dummy; } ;
struct scsi_device {int no_uld_attach; struct sdebug_dev_info* hostdata; TYPE_1__* host; int lun; int id; int channel; } ;
struct TYPE_2__ {scalar_t__ max_cmd_len; int host_no; } ;


 scalar_t__ SDEBUG_MAX_CMD_LEN ;
 int config_cdb_len (struct scsi_device*) ;
 struct sdebug_dev_info* find_build_dev_info (struct scsi_device*) ;
 int pr_info (char*,int ,int ,int ,int ) ;
 scalar_t__ sdebug_no_uld ;
 scalar_t__ sdebug_verbose ;

__attribute__((used)) static int scsi_debug_slave_configure(struct scsi_device *sdp)
{
 struct sdebug_dev_info *devip =
   (struct sdebug_dev_info *)sdp->hostdata;

 if (sdebug_verbose)
  pr_info("slave_configure <%u %u %u %llu>\n",
         sdp->host->host_no, sdp->channel, sdp->id, sdp->lun);
 if (sdp->host->max_cmd_len != SDEBUG_MAX_CMD_LEN)
  sdp->host->max_cmd_len = SDEBUG_MAX_CMD_LEN;
 if (devip == ((void*)0)) {
  devip = find_build_dev_info(sdp);
  if (devip == ((void*)0))
   return 1;
 }
 sdp->hostdata = devip;
 if (sdebug_no_uld)
  sdp->no_uld_attach = 1;
 config_cdb_len(sdp);
 return 0;
}
