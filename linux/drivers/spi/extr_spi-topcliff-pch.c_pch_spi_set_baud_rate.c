
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_master {int dummy; } ;


 int MASK_SPBRR_SPBR_BITS ;
 int PCH_CLOCK_HZ ;
 int PCH_MAX_SPBR ;
 int PCH_SPBRR ;
 int pch_spi_setclr_reg (struct spi_master*,int ,int,int ) ;

__attribute__((used)) static void pch_spi_set_baud_rate(struct spi_master *master, u32 speed_hz)
{
 u32 n_spbr = PCH_CLOCK_HZ / (speed_hz * 2);


 if (n_spbr > PCH_MAX_SPBR)
  n_spbr = PCH_MAX_SPBR;

 pch_spi_setclr_reg(master, PCH_SPBRR, n_spbr, MASK_SPBRR_SPBR_BITS);
}
