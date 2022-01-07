
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uas_dev_info {int ** cmnd; int lock; } ;
struct uas_cmd_info {int state; int uas_tag; } ;
struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; int SCp; } ;
struct TYPE_2__ {scalar_t__ hostdata; } ;


 int COMMAND_ABORTED ;
 int COMMAND_INFLIGHT ;
 int DATA_IN_URB_INFLIGHT ;
 int DATA_OUT_URB_INFLIGHT ;
 int EBUSY ;
 int lockdep_assert_held (int *) ;
 int stub1 (struct scsi_cmnd*) ;
 int uas_free_unsubmitted_urbs (struct scsi_cmnd*) ;

__attribute__((used)) static int uas_try_complete(struct scsi_cmnd *cmnd, const char *caller)
{
 struct uas_cmd_info *cmdinfo = (void *)&cmnd->SCp;
 struct uas_dev_info *devinfo = (void *)cmnd->device->hostdata;

 lockdep_assert_held(&devinfo->lock);
 if (cmdinfo->state & (COMMAND_INFLIGHT |
         DATA_IN_URB_INFLIGHT |
         DATA_OUT_URB_INFLIGHT |
         COMMAND_ABORTED))
  return -EBUSY;
 devinfo->cmnd[cmdinfo->uas_tag - 1] = ((void*)0);
 uas_free_unsubmitted_urbs(cmnd);
 cmnd->scsi_done(cmnd);
 return 0;
}
