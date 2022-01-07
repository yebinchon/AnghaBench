
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc4xx_spi {int dummy; } ;


 int SDR0 ;
 int SDR0_PFC1 ;
 int dcri_clrset (int ,int ,int,int ) ;

__attribute__((used)) static void spi_ppc4xx_enable(struct ppc4xx_spi *hw)
{







 dcri_clrset(SDR0, SDR0_PFC1, 0x80000000 >> 14, 0);
}
