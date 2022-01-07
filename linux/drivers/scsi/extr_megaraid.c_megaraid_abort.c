
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
typedef int adapter_t ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int SCB_ABORT ;
 int mega_rundoneq (int *) ;
 int megaraid_abort_and_reset (int *,struct scsi_cmnd*,int ) ;

__attribute__((used)) static int
megaraid_abort(struct scsi_cmnd *cmd)
{
 adapter_t *adapter;
 int rval;

 adapter = (adapter_t *)cmd->device->host->hostdata;

 rval = megaraid_abort_and_reset(adapter, cmd, SCB_ABORT);





 mega_rundoneq(adapter);

 return rval;
}
