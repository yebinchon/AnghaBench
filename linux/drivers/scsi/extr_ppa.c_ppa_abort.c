
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int phase; } ;
struct scsi_cmnd {TYPE_2__ SCp; TYPE_1__* device; } ;
struct TYPE_7__ {int * cur_cmd; } ;
typedef TYPE_3__ ppa_struct ;
struct TYPE_5__ {int host; } ;


 int FAILED ;
 int SUCCESS ;
 TYPE_3__* ppa_dev (int ) ;

__attribute__((used)) static int ppa_abort(struct scsi_cmnd *cmd)
{
 ppa_struct *dev = ppa_dev(cmd->device->host);





 switch (cmd->SCp.phase) {
 case 0:
 case 1:
  dev->cur_cmd = ((void*)0);
  return SUCCESS;
  break;
 default:
  return FAILED;
  break;
 }
}
