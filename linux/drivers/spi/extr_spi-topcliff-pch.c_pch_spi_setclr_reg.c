
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_master {int dummy; } ;


 int pch_spi_readreg (struct spi_master*,int) ;
 int pch_spi_writereg (struct spi_master*,int,int) ;

__attribute__((used)) static inline void pch_spi_setclr_reg(struct spi_master *master, int idx,
          u32 set, u32 clr)
{
 u32 tmp = pch_spi_readreg(master, idx);
 tmp = (tmp & ~clr) | set;
 pch_spi_writereg(master, idx, tmp);
}
