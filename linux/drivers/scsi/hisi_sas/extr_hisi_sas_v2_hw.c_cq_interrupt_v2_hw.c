
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_sas_cq {int id; int tasklet; struct hisi_hba* hisi_hba; } ;
struct hisi_hba {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int OQ_INT_SRC ;
 int hisi_sas_write32 (struct hisi_hba*,int ,int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t cq_interrupt_v2_hw(int irq_no, void *p)
{
 struct hisi_sas_cq *cq = p;
 struct hisi_hba *hisi_hba = cq->hisi_hba;
 int queue = cq->id;

 hisi_sas_write32(hisi_hba, OQ_INT_SRC, 1 << queue);

 tasklet_schedule(&cq->tasklet);

 return IRQ_HANDLED;
}
