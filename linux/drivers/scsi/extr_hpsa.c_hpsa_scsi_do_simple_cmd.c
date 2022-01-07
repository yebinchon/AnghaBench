
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctlr_info {int dummy; } ;
struct CommandList {TYPE_1__* err_info; } ;
struct TYPE_2__ {int CommandStatus; } ;


 int CMD_CTLR_LOCKUP ;
 int IO_OK ;
 int hpsa_scsi_do_simple_cmd_core (struct ctlr_info*,struct CommandList*,int,unsigned long) ;
 int lockup_detected (struct ctlr_info*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int hpsa_scsi_do_simple_cmd(struct ctlr_info *h, struct CommandList *c,
       int reply_queue, unsigned long timeout_msecs)
{
 if (unlikely(lockup_detected(h))) {
  c->err_info->CommandStatus = CMD_CTLR_LOCKUP;
  return IO_OK;
 }
 return hpsa_scsi_do_simple_cmd_core(h, c, reply_queue, timeout_msecs);
}
