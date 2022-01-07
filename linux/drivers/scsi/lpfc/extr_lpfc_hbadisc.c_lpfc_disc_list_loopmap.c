
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int fc_myDID; scalar_t__ cfg_scan_down; struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ fc_topology; int* alpa_map; } ;


 int FC_MAXLOOP ;
 scalar_t__ LPFC_TOPOLOGY_LOOP ;
 int* lpfcAlpaArray ;
 int lpfc_is_link_up (struct lpfc_hba*) ;
 int lpfc_setup_disc_node (struct lpfc_vport*,int) ;

void
lpfc_disc_list_loopmap(struct lpfc_vport *vport)
{
 struct lpfc_hba *phba = vport->phba;
 int j;
 uint32_t alpa, index;

 if (!lpfc_is_link_up(phba))
  return;

 if (phba->fc_topology != LPFC_TOPOLOGY_LOOP)
  return;


 if (phba->alpa_map[0]) {
  for (j = 1; j <= phba->alpa_map[0]; j++) {
   alpa = phba->alpa_map[j];
   if (((vport->fc_myDID & 0xff) == alpa) || (alpa == 0))
    continue;
   lpfc_setup_disc_node(vport, alpa);
  }
 } else {

  for (j = 0; j < FC_MAXLOOP; j++) {



   if (vport->cfg_scan_down)
    index = j;
   else
    index = FC_MAXLOOP - j - 1;
   alpa = lpfcAlpaArray[index];
   if ((vport->fc_myDID & 0xff) == alpa)
    continue;
   lpfc_setup_disc_node(vport, alpa);
  }
 }
 return;
}
