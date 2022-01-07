
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scsi_device {int host; } ;
struct scsi_cmnd {int cmd_len; char* cmnd; struct scsi_cmnd* sense_buffer; struct request* request; struct scsi_device* device; } ;
struct request {int dummy; } ;
struct gdth_cmndinfo {int internal_command; int status; int info; int * internal_cmd_str; int priority; } ;
typedef int gdth_ha_str ;
typedef int gdth_cmd_str ;
typedef int cmndinfo ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IOCTL_PRI ;
 int SCSI_SENSE_BUFFERSIZE ;
 int TRACE (char*) ;
 int __gdth_queuecommand (int *,struct scsi_cmnd*,struct gdth_cmndinfo*) ;
 int kfree (struct scsi_cmnd*) ;
 void* kzalloc (int,int ) ;
 int memset (struct gdth_cmndinfo*,int ,int) ;
 int * shost_priv (int ) ;
 int wait ;
 int wait_for_completion (int *) ;

int __gdth_execute(struct scsi_device *sdev, gdth_cmd_str *gdtcmd, char *cmnd,
                   int timeout, u32 *info)
{
    gdth_ha_str *ha = shost_priv(sdev->host);
    struct scsi_cmnd *scp;
    struct gdth_cmndinfo cmndinfo;
    DECLARE_COMPLETION_ONSTACK(wait);
    int rval;

    scp = kzalloc(sizeof(*scp), GFP_KERNEL);
    if (!scp)
        return -ENOMEM;

    scp->sense_buffer = kzalloc(SCSI_SENSE_BUFFERSIZE, GFP_KERNEL);
    if (!scp->sense_buffer) {
 kfree(scp);
 return -ENOMEM;
    }

    scp->device = sdev;
    memset(&cmndinfo, 0, sizeof(cmndinfo));


    scp->request = (struct request *)&wait;
    scp->cmd_len = 12;
    scp->cmnd = cmnd;
    cmndinfo.priority = IOCTL_PRI;
    cmndinfo.internal_cmd_str = gdtcmd;
    cmndinfo.internal_command = 1;

    TRACE(("__gdth_execute() cmd 0x%x\n", scp->cmnd[0]));
    __gdth_queuecommand(ha, scp, &cmndinfo);

    wait_for_completion(&wait);

    rval = cmndinfo.status;
    if (info)
        *info = cmndinfo.info;
    kfree(scp->sense_buffer);
    kfree(scp);
    return rval;
}
