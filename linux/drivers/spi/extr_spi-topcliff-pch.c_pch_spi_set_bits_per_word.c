
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_master {int dummy; } ;


 int PCH_SPBRR ;
 int SPBRR_SIZE_BIT ;
 int pch_spi_setclr_reg (struct spi_master*,int ,int ,int ) ;

__attribute__((used)) static void pch_spi_set_bits_per_word(struct spi_master *master,
          u8 bits_per_word)
{
 if (bits_per_word == 8)
  pch_spi_setclr_reg(master, PCH_SPBRR, 0, SPBRR_SIZE_BIT);
 else
  pch_spi_setclr_reg(master, PCH_SPBRR, SPBRR_SIZE_BIT, 0);
}
