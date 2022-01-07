
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {int dpc_flags; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int REGISTER_FDMI_NEEDED ;
 int set_bit (int ,int *) ;
 TYPE_1__* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static void
qla2x00_set_host_system_hostname(struct Scsi_Host *shost)
{
 scsi_qla_host_t *vha = shost_priv(shost);

 set_bit(REGISTER_FDMI_NEEDED, &vha->dpc_flags);
}
