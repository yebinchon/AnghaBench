
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc52xx_spi {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mpc52xx_spi_fsm_process (int,struct mpc52xx_spi*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t mpc52xx_spi_irq(int irq, void *_ms)
{
 struct mpc52xx_spi *ms = _ms;
 spin_lock(&ms->lock);
 mpc52xx_spi_fsm_process(irq, ms);
 spin_unlock(&ms->lock);
 return IRQ_HANDLED;
}
