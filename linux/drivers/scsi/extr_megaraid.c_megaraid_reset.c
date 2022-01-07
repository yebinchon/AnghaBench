
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct scsi_cmnd {TYPE_3__* device; } ;
struct TYPE_13__ {int opcode; int cmd; } ;
typedef TYPE_4__ megacmd_t ;
struct TYPE_14__ {int lock; TYPE_1__* dev; } ;
typedef TYPE_5__ adapter_t ;
struct TYPE_12__ {TYPE_2__* host; } ;
struct TYPE_11__ {scalar_t__ hostdata; } ;
struct TYPE_10__ {int dev; } ;


 int MEGA_CLUSTER_CMD ;
 int MEGA_RESET_RESERVATIONS ;
 int SCB_RESET ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 scalar_t__ mega_internal_command (TYPE_5__*,TYPE_4__*,int *) ;
 int mega_rundoneq (TYPE_5__*) ;
 int megaraid_abort_and_reset (TYPE_5__*,struct scsi_cmnd*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
megaraid_reset(struct scsi_cmnd *cmd)
{
 adapter_t *adapter;
 megacmd_t mc;
 int rval;

 adapter = (adapter_t *)cmd->device->host->hostdata;
 spin_lock_irq(&adapter->lock);

 rval = megaraid_abort_and_reset(adapter, cmd, SCB_RESET);





 mega_rundoneq(adapter);
 spin_unlock_irq(&adapter->lock);

 return rval;
}
