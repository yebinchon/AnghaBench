
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_state; } ;


 int lpfc_issue_els_logo (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;

__attribute__((used)) static uint32_t
lpfc_rcv_els_unused_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
    void *arg, uint32_t evt)
{
 lpfc_issue_els_logo(vport, ndlp, 0);
 return ndlp->nlp_state;
}
