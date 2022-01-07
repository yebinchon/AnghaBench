
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_msiof_spi_priv {int dummy; } ;


 int TFDR ;
 int get_unaligned (int const*) ;
 int sh_msiof_write (struct sh_msiof_spi_priv*,int ,int) ;

__attribute__((used)) static void sh_msiof_spi_write_fifo_32u(struct sh_msiof_spi_priv *p,
     const void *tx_buf, int words, int fs)
{
 const u32 *buf_32 = tx_buf;
 int k;

 for (k = 0; k < words; k++)
  sh_msiof_write(p, TFDR, get_unaligned(&buf_32[k]) << fs);
}
