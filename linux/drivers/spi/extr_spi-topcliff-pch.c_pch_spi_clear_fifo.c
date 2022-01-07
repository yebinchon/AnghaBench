
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;


 int PCH_SPCR ;
 int SPCR_FICLR_BIT ;
 int pch_spi_setclr_reg (struct spi_master*,int ,int ,int ) ;

__attribute__((used)) static void pch_spi_clear_fifo(struct spi_master *master)
{
 pch_spi_setclr_reg(master, PCH_SPCR, SPCR_FICLR_BIT, 0);
 pch_spi_setclr_reg(master, PCH_SPCR, 0, SPCR_FICLR_BIT);
}
