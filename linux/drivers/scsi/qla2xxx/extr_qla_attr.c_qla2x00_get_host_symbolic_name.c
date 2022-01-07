
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;
typedef int scsi_qla_host_t ;


 int fc_host_symbolic_name (struct Scsi_Host*) ;
 int qla2x00_get_sym_node_name (int *,int ,int) ;
 int * shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static void
qla2x00_get_host_symbolic_name(struct Scsi_Host *shost)
{
 scsi_qla_host_t *vha = shost_priv(shost);

 qla2x00_get_sym_node_name(vha, fc_host_symbolic_name(shost),
     sizeof(fc_host_symbolic_name(shost)));
}
