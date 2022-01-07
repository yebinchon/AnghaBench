
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_sh_data {unsigned long cr1; int wait; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SPI_SH_CR1 ;
 int SPI_SH_CR4 ;
 unsigned long SPI_SH_RBE ;
 unsigned long SPI_SH_RBF ;
 unsigned long SPI_SH_TBE ;
 unsigned long SPI_SH_TBF ;
 int spi_sh_clear_bit (struct spi_sh_data*,int,int ) ;
 unsigned long spi_sh_read (struct spi_sh_data*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t spi_sh_irq(int irq, void *_ss)
{
 struct spi_sh_data *ss = (struct spi_sh_data *)_ss;
 unsigned long cr1;

 cr1 = spi_sh_read(ss, SPI_SH_CR1);
 if (cr1 & SPI_SH_TBE)
  ss->cr1 |= SPI_SH_TBE;
 if (cr1 & SPI_SH_TBF)
  ss->cr1 |= SPI_SH_TBF;
 if (cr1 & SPI_SH_RBE)
  ss->cr1 |= SPI_SH_RBE;
 if (cr1 & SPI_SH_RBF)
  ss->cr1 |= SPI_SH_RBF;

 if (ss->cr1) {
  spi_sh_clear_bit(ss, ss->cr1, SPI_SH_CR4);
  wake_up(&ss->wait);
 }

 return IRQ_HANDLED;
}
