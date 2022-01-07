
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {scalar_t__ fc_npr_cnt; } ;


 int lpfc_can_disctmo (struct lpfc_vport*) ;
 scalar_t__ lpfc_els_disc_plogi (struct lpfc_vport*) ;
 int lpfc_end_rscn (struct lpfc_vport*) ;

__attribute__((used)) static void
lpfc_rscn_disc(struct lpfc_vport *vport)
{
 lpfc_can_disctmo(vport);



 if (vport->fc_npr_cnt)
  if (lpfc_els_disc_plogi(vport))
   return;

 lpfc_end_rscn(vport);
}
