
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int spi_imx_clkdiv_2(unsigned int fin,
  unsigned int fspi, unsigned int *fres)
{
 int i, div = 4;

 for (i = 0; i < 7; i++) {
  if (fspi * div >= fin)
   goto out;
  div <<= 1;
 }

out:
 *fres = fin / div;
 return i;
}
