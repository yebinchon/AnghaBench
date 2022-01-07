
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int rxc_db_work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t ntb_transport_isr(int irq, void *dev)
{
 struct ntb_transport_qp *qp = dev;

 tasklet_schedule(&qp->rxc_db_work);

 return IRQ_HANDLED;
}
