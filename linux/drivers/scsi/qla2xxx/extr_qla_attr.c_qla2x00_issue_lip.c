
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 scalar_t__ IS_QLAFX00 (int ) ;
 int qla2x00_loop_reset (TYPE_1__*) ;
 TYPE_1__* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int
qla2x00_issue_lip(struct Scsi_Host *shost)
{
 scsi_qla_host_t *vha = shost_priv(shost);

 if (IS_QLAFX00(vha->hw))
  return 0;

 qla2x00_loop_reset(vha);
 return 0;
}
