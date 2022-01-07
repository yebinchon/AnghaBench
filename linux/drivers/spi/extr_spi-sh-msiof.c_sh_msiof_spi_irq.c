
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_msiof_spi_priv {int done; } ;
typedef int irqreturn_t ;


 int IER ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int sh_msiof_write (struct sh_msiof_spi_priv*,int ,int ) ;

__attribute__((used)) static irqreturn_t sh_msiof_spi_irq(int irq, void *data)
{
 struct sh_msiof_spi_priv *p = data;


 sh_msiof_write(p, IER, 0);
 complete(&p->done);

 return IRQ_HANDLED;
}
