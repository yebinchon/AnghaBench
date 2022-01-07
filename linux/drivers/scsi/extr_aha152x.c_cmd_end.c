
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int sent_command; } ;
struct TYPE_5__ {scalar_t__ cmd_len; TYPE_1__ SCp; } ;


 scalar_t__ CMD_I ;
 TYPE_2__* CURRENT_SC ;
 int KERN_ERR ;
 int scmd_printk (int ,TYPE_2__*,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void cmd_end(struct Scsi_Host *shpnt)
{
 if(CMD_I<CURRENT_SC->cmd_len)
  scmd_printk(KERN_ERR, CURRENT_SC,
       "command sent incompletely (%d/%d)\n",
       CMD_I, CURRENT_SC->cmd_len);
 else
  CURRENT_SC->SCp.sent_command++;
}
