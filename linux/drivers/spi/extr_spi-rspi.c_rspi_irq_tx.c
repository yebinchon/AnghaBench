
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rspi_data {int spsr; int wait; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RSPI_SPSR ;
 int SPCR_SPTIE ;
 int SPSR_SPTEF ;
 int rspi_disable_irq (struct rspi_data*,int ) ;
 int rspi_read8 (struct rspi_data*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t rspi_irq_tx(int irq, void *_sr)
{
 struct rspi_data *rspi = _sr;
 u8 spsr;

 rspi->spsr = spsr = rspi_read8(rspi, RSPI_SPSR);
 if (spsr & SPSR_SPTEF) {
  rspi_disable_irq(rspi, SPCR_SPTIE);
  wake_up(&rspi->wait);
  return IRQ_HANDLED;
 }

 return 0;
}
