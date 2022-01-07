
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sh_msiof_spi_priv {int dummy; } ;


 int RFDR ;
 int sh_msiof_read (struct sh_msiof_spi_priv*,int ) ;

__attribute__((used)) static void sh_msiof_spi_read_fifo_8(struct sh_msiof_spi_priv *p,
         void *rx_buf, int words, int fs)
{
 u8 *buf_8 = rx_buf;
 int k;

 for (k = 0; k < words; k++)
  buf_8[k] = sh_msiof_read(p, RFDR) >> fs;
}
