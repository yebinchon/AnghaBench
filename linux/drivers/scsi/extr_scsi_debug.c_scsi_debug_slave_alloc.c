
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int lun; int id; int channel; TYPE_1__* host; } ;
struct TYPE_2__ {int host_no; } ;


 int pr_info (char*,int ,int ,int ,int ) ;
 scalar_t__ sdebug_verbose ;

__attribute__((used)) static int scsi_debug_slave_alloc(struct scsi_device *sdp)
{
 if (sdebug_verbose)
  pr_info("slave_alloc <%u %u %u %llu>\n",
         sdp->host->host_no, sdp->channel, sdp->id, sdp->lun);
 return 0;
}
