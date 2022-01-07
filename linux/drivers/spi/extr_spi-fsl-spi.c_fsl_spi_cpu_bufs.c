
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_transfer {int dummy; } ;
struct mpc8xxx_spi {unsigned int count; int (* get_tx ) (struct mpc8xxx_spi*) ;struct fsl_spi_reg* reg_base; } ;
struct fsl_spi_reg {int transmit; int mask; } ;


 int SPIM_NE ;
 int mpc8xxx_spi_write_reg (int *,int ) ;
 int stub1 (struct mpc8xxx_spi*) ;

__attribute__((used)) static int fsl_spi_cpu_bufs(struct mpc8xxx_spi *mspi,
    struct spi_transfer *t, unsigned int len)
{
 u32 word;
 struct fsl_spi_reg *reg_base = mspi->reg_base;

 mspi->count = len;


 mpc8xxx_spi_write_reg(&reg_base->mask, SPIM_NE);


 word = mspi->get_tx(mspi);
 mpc8xxx_spi_write_reg(&reg_base->transmit, word);

 return 0;
}
