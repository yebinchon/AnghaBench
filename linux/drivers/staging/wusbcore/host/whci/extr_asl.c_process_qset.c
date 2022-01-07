
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct whc_qtd {int status; } ;
struct whc_qset {scalar_t__ ntds; size_t td_start; scalar_t__ remove; struct whc_qtd* qtd; } ;
struct whc {int dummy; } ;
typedef enum whc_update { ____Placeholder_whc_update } whc_update ;


 int QTD_STS_ACTIVE ;
 int QTD_STS_HALTED ;
 int WHC_UPDATE_REMOVED ;
 int WHC_UPDATE_UPDATED ;
 int asl_qset_remove (struct whc*,struct whc_qset*) ;
 int le32_to_cpu (int ) ;
 int process_halted_qtd (struct whc*,struct whc_qset*,struct whc_qtd*) ;
 int process_inactive_qtd (struct whc*,struct whc_qset*,struct whc_qtd*) ;
 int qset_add_qtds (struct whc*,struct whc_qset*) ;

__attribute__((used)) static uint32_t process_qset(struct whc *whc, struct whc_qset *qset)
{
 enum whc_update update = 0;
 uint32_t status = 0;

 while (qset->ntds) {
  struct whc_qtd *td;

  td = &qset->qtd[qset->td_start];
  status = le32_to_cpu(td->status);




  if (status & QTD_STS_ACTIVE)
   break;

  if (status & QTD_STS_HALTED) {

   process_halted_qtd(whc, qset, td);



   update |= WHC_UPDATE_UPDATED;
   goto done;
  }


  process_inactive_qtd(whc, qset, td);
 }

 if (!qset->remove)
  update |= qset_add_qtds(whc, qset);

done:




 if (qset->remove && qset->ntds == 0) {
  asl_qset_remove(whc, qset);
  update |= WHC_UPDATE_REMOVED;
 }
 return update;
}
