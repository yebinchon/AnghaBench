
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rspi_data {int spsr; int wait; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RSPI_SPSR ;
 int SPCR_SPRIE ;
 int SPCR_SPTIE ;
 int SPSR_SPRF ;
 int SPSR_SPTEF ;
 int rspi_disable_irq (struct rspi_data*,int) ;
 int rspi_read8 (struct rspi_data*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t rspi_irq_mux(int irq, void *_sr)
{
 struct rspi_data *rspi = _sr;
 u8 spsr;
 irqreturn_t ret = IRQ_NONE;
 u8 disable_irq = 0;

 rspi->spsr = spsr = rspi_read8(rspi, RSPI_SPSR);
 if (spsr & SPSR_SPRF)
  disable_irq |= SPCR_SPRIE;
 if (spsr & SPSR_SPTEF)
  disable_irq |= SPCR_SPTIE;

 if (disable_irq) {
  ret = IRQ_HANDLED;
  rspi_disable_irq(rspi, disable_irq);
  wake_up(&rspi->wait);
 }

 return ret;
}
