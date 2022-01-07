
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_request {int dummy; } ;
struct scsi_tape {TYPE_4__* buffer; TYPE_2__* device; } ;
struct TYPE_7__ {scalar_t__ midlevel_result; } ;
struct TYPE_8__ {int syscall_result; TYPE_3__ cmdstat; } ;
struct TYPE_6__ {TYPE_1__* request_queue; } ;
struct TYPE_5__ {int rq_timeout; } ;


 int DEBC_printk (struct scsi_tape*,char*,char*) ;
 int DMA_NONE ;
 int KERN_ERR ;
 int MAX_COMMAND_SIZE ;
 int MAX_RETRIES ;
 unsigned char SPACE ;
 struct st_request* st_do_scsi (int *,struct scsi_tape*,unsigned char*,int ,int ,int ,int ,int) ;
 int st_printk (int ,struct scsi_tape*,char*,char*) ;
 int st_release_request (struct st_request*) ;

__attribute__((used)) static int cross_eof(struct scsi_tape * STp, int forward)
{
 struct st_request *SRpnt;
 unsigned char cmd[MAX_COMMAND_SIZE];

 cmd[0] = SPACE;
 cmd[1] = 0x01;
 if (forward) {
  cmd[2] = cmd[3] = 0;
  cmd[4] = 1;
 } else
  cmd[2] = cmd[3] = cmd[4] = 0xff;
 cmd[5] = 0;

 DEBC_printk(STp, "Stepping over filemark %s.\n",
      forward ? "forward" : "backward");

 SRpnt = st_do_scsi(((void*)0), STp, cmd, 0, DMA_NONE,
      STp->device->request_queue->rq_timeout,
      MAX_RETRIES, 1);
 if (!SRpnt)
  return (STp->buffer)->syscall_result;

 st_release_request(SRpnt);
 SRpnt = ((void*)0);

 if ((STp->buffer)->cmdstat.midlevel_result != 0)
  st_printk(KERN_ERR, STp,
     "Stepping over filemark %s failed.\n",
     forward ? "forward" : "backward");

 return (STp->buffer)->syscall_result;
}
