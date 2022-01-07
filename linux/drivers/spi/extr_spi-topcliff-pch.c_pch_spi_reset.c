
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;


 int PCH_SRST ;
 int pch_spi_writereg (struct spi_master*,int ,int) ;

__attribute__((used)) static void pch_spi_reset(struct spi_master *master)
{

 pch_spi_writereg(master, PCH_SRST, 0x1);


 pch_spi_writereg(master, PCH_SRST, 0x0);
}
