
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int phba; } ;
struct lpfc_nodelist {int dummy; } ;


 int NLP_STE_FREED_NODE ;
 int lpfc_drop_node (struct lpfc_vport*,struct lpfc_nodelist*) ;
 int lpfc_els_abort (int ,struct lpfc_nodelist*) ;
 int lpfc_unreg_rpi (struct lpfc_vport*,struct lpfc_nodelist*) ;

__attribute__((used)) static uint32_t
lpfc_device_rm_logo_issue(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
     void *arg, uint32_t evt)
{





 lpfc_unreg_rpi(vport, ndlp);

 lpfc_els_abort(vport->phba, ndlp);
 lpfc_drop_node(vport, ndlp);
 return NLP_STE_FREED_NODE;
}
