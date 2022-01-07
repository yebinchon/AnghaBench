
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {scalar_t__ port_type; scalar_t__ vpi; int fc_flag; } ;
struct lpfc_hba {int max_vports; scalar_t__ max_vpi; scalar_t__ fc_topology; int link_flag; } ;


 int FC_VPORT_FAILED ;
 int FC_VPORT_LINKDOWN ;
 int FC_VPORT_NEEDS_INIT_VPI ;
 int FC_VPORT_NO_FABRIC_SUPP ;
 int KERN_ERR ;
 int LOG_ELS ;
 scalar_t__ LPFC_PHYSICAL_PORT ;
 scalar_t__ LPFC_TOPOLOGY_LOOP ;
 int LS_NPIV_FAB_SUPPORTED ;
 struct lpfc_vport** lpfc_create_vport_work_array (struct lpfc_hba*) ;
 int lpfc_destroy_vport_work_array (struct lpfc_hba*,struct lpfc_vport**) ;
 int lpfc_initial_fdisc (struct lpfc_vport*) ;
 int lpfc_issue_init_vpi (struct lpfc_vport*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*) ;
 int lpfc_vport_set_state (struct lpfc_vport*,int ) ;

void
lpfc_start_fdiscs(struct lpfc_hba *phba)
{
 struct lpfc_vport **vports;
 int i;

 vports = lpfc_create_vport_work_array(phba);
 if (vports != ((void*)0)) {
  for (i = 0; i <= phba->max_vports && vports[i] != ((void*)0); i++) {
   if (vports[i]->port_type == LPFC_PHYSICAL_PORT)
    continue;

   if (vports[i]->vpi > phba->max_vpi) {
    lpfc_vport_set_state(vports[i],
           FC_VPORT_FAILED);
    continue;
   }
   if (phba->fc_topology == LPFC_TOPOLOGY_LOOP) {
    lpfc_vport_set_state(vports[i],
           FC_VPORT_LINKDOWN);
    continue;
   }
   if (vports[i]->fc_flag & FC_VPORT_NEEDS_INIT_VPI) {
    lpfc_issue_init_vpi(vports[i]);
    continue;
   }
   if (phba->link_flag & LS_NPIV_FAB_SUPPORTED)
    lpfc_initial_fdisc(vports[i]);
   else {
    lpfc_vport_set_state(vports[i],
           FC_VPORT_NO_FABRIC_SUPP);
    lpfc_printf_vlog(vports[i], KERN_ERR,
       LOG_ELS,
       "0259 No NPIV "
       "Fabric support\n");
   }
  }
 }
 lpfc_destroy_vport_work_array(phba, vports);
}
