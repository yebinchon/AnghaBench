
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 int fc_host_symbolic_name (struct Scsi_Host*) ;
 int lpfc_vport_symbolic_node_name (struct lpfc_vport*,int ,int) ;

__attribute__((used)) static void
lpfc_get_host_symbolic_name(struct Scsi_Host *shost)
{
 struct lpfc_vport *vport = (struct lpfc_vport *)shost->hostdata;

 lpfc_vport_symbolic_node_name(vport, fc_host_symbolic_name(shost),
          sizeof fc_host_symbolic_name(shost));
}
