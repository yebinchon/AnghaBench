
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcfqspi {int waitq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MCFQSPI_QIR_SPIF ;
 int MCFQSPI_QIR_SPIFE ;
 int mcfqspi_wr_qir (struct mcfqspi*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t mcfqspi_irq_handler(int this_irq, void *dev_id)
{
 struct mcfqspi *mcfqspi = dev_id;


 mcfqspi_wr_qir(mcfqspi, MCFQSPI_QIR_SPIFE | MCFQSPI_QIR_SPIF);
 wake_up(&mcfqspi->waitq);

 return IRQ_HANDLED;
}
