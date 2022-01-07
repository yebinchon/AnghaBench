
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int flags; TYPE_1__* request; } ;
struct TYPE_2__ {int tag; } ;


 int SCMD_TAGGED ;
 int SIMPLE_QUEUE_TAG ;

int spi_populate_tag_msg(unsigned char *msg, struct scsi_cmnd *cmd)
{
        if (cmd->flags & SCMD_TAGGED) {
  *msg++ = SIMPLE_QUEUE_TAG;
         *msg++ = cmd->request->tag;
         return 2;
 }

 return 0;
}
