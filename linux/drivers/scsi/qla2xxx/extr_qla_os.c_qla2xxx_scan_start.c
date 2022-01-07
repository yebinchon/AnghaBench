
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_7__ {int dpc_flags; TYPE_2__* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_5__ {scalar_t__ running_gold_fw; } ;
struct TYPE_6__ {TYPE_1__ flags; } ;


 int LOCAL_LOOP_UPDATE ;
 int LOOP_RESYNC_NEEDED ;
 int NPIV_CONFIG_NEEDED ;
 int RSCN_UPDATE ;
 int set_bit (int ,int *) ;
 TYPE_3__* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static void
qla2xxx_scan_start(struct Scsi_Host *shost)
{
 scsi_qla_host_t *vha = shost_priv(shost);

 if (vha->hw->flags.running_gold_fw)
  return;

 set_bit(LOOP_RESYNC_NEEDED, &vha->dpc_flags);
 set_bit(LOCAL_LOOP_UPDATE, &vha->dpc_flags);
 set_bit(RSCN_UPDATE, &vha->dpc_flags);
 set_bit(NPIV_CONFIG_NEEDED, &vha->dpc_flags);
}
