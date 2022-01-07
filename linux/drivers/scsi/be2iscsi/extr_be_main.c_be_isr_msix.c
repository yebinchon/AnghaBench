
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int dummy; } ;
struct be_queue_info {int id; } ;
struct be_eq_obj {int iopoll; struct beiscsi_hba* phba; struct be_queue_info q; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int hwi_ring_eq_db (struct beiscsi_hba*,int ,int,int ,int ,int) ;
 int irq_poll_sched (int *) ;

__attribute__((used)) static irqreturn_t be_isr_msix(int irq, void *dev_id)
{
 struct beiscsi_hba *phba;
 struct be_queue_info *eq;
 struct be_eq_obj *pbe_eq;

 pbe_eq = dev_id;
 eq = &pbe_eq->q;

 phba = pbe_eq->phba;

 hwi_ring_eq_db(phba, eq->id, 1, 0, 0, 1);
 irq_poll_sched(&pbe_eq->iopoll);

 return IRQ_HANDLED;
}
