
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sh_msiof_spi_priv {int dummy; } ;


 int TFDR ;
 int sh_msiof_write (struct sh_msiof_spi_priv*,int ,int const) ;

__attribute__((used)) static void sh_msiof_spi_write_fifo_16(struct sh_msiof_spi_priv *p,
           const void *tx_buf, int words, int fs)
{
 const u16 *buf_16 = tx_buf;
 int k;

 for (k = 0; k < words; k++)
  sh_msiof_write(p, TFDR, buf_16[k] << fs);
}
