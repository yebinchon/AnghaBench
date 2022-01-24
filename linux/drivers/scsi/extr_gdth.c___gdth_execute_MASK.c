#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct scsi_device {int /*<<< orphan*/  host; } ;
struct scsi_cmnd {int cmd_len; char* cmnd; struct scsi_cmnd* sense_buffer; struct request* request; struct scsi_device* device; } ;
struct request {int dummy; } ;
struct gdth_cmndinfo {int internal_command; int status; int /*<<< orphan*/  info; int /*<<< orphan*/ * internal_cmd_str; int /*<<< orphan*/  priority; } ;
typedef  int /*<<< orphan*/  gdth_ha_str ;
typedef  int /*<<< orphan*/  gdth_cmd_str ;
typedef  int /*<<< orphan*/  cmndinfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IOCTL_PRI ; 
 int SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct scsi_cmnd*,struct gdth_cmndinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gdth_cmndinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct scsi_device *sdev, gdth_cmd_str *gdtcmd, char *cmnd,
                   int timeout, u32 *info)
{
    gdth_ha_str *ha = FUNC6(sdev->host);
    struct scsi_cmnd *scp;
    struct gdth_cmndinfo cmndinfo;
    FUNC0(wait);
    int rval;

    scp = FUNC4(sizeof(*scp), GFP_KERNEL);
    if (!scp)
        return -ENOMEM;

    scp->sense_buffer = FUNC4(SCSI_SENSE_BUFFERSIZE, GFP_KERNEL);
    if (!scp->sense_buffer) {
	FUNC3(scp);
	return -ENOMEM;
    }

    scp->device = sdev;
    FUNC5(&cmndinfo, 0, sizeof(cmndinfo));

    /* use request field to save the ptr. to completion struct. */
    scp->request = (struct request *)&wait;
    scp->cmd_len = 12;
    scp->cmnd = cmnd;
    cmndinfo.priority = IOCTL_PRI;
    cmndinfo.internal_cmd_str = gdtcmd;
    cmndinfo.internal_command = 1;

    FUNC1(("__gdth_execute() cmd 0x%x\n", scp->cmnd[0]));
    FUNC2(ha, scp, &cmndinfo);

    FUNC7(&wait);

    rval = cmndinfo.status;
    if (info)
        *info = cmndinfo.info;
    FUNC3(scp->sense_buffer);
    FUNC3(scp);
    return rval;
}