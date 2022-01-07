
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_msiof_spi_priv {int dummy; } ;


 int RFDR ;
 int put_unaligned (int,int *) ;
 int sh_msiof_read (struct sh_msiof_spi_priv*,int ) ;

__attribute__((used)) static void sh_msiof_spi_read_fifo_32u(struct sh_msiof_spi_priv *p,
           void *rx_buf, int words, int fs)
{
 u32 *buf_32 = rx_buf;
 int k;

 for (k = 0; k < words; k++)
  put_unaligned(sh_msiof_read(p, RFDR) >> fs, &buf_32[k]);
}
