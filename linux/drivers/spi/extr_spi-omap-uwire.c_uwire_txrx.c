
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct spi_transfer {unsigned int len; unsigned int bits_per_word; int * rx_buf; int * tx_buf; } ;
struct spi_device {int chip_select; int dev; } ;


 int CSRB ;
 int CS_CMD ;
 int EIO ;
 int RDRB ;
 int START ;
 int UWIRE_CSR ;
 int UWIRE_RDR ;
 int UWIRE_TDR ;
 int dev_name (int *) ;
 int pr_debug (char*,int ,unsigned int,int) ;
 int uwire_read_reg (int ) ;
 int uwire_write_reg (int ,int) ;
 scalar_t__ wait_uwire_csr_flag (int,int,int) ;

__attribute__((used)) static int uwire_txrx(struct spi_device *spi, struct spi_transfer *t)
{
 unsigned len = t->len;
 unsigned bits = t->bits_per_word;
 unsigned bytes;
 u16 val, w;
 int status = 0;

 if (!t->tx_buf && !t->rx_buf)
  return 0;

 w = spi->chip_select << 10;
 w |= CS_CMD;

 if (t->tx_buf) {
  const u8 *buf = t->tx_buf;




  while (len >= 1) {



   val = *buf++;
   if (bits > 8) {
    bytes = 2;
    val |= *buf++ << 8;
   } else
    bytes = 1;
   val <<= 16 - bits;





   if (wait_uwire_csr_flag(CSRB, 0, 0))
    goto eio;

   uwire_write_reg(UWIRE_TDR, val);


   val = START | w | (bits << 5);

   uwire_write_reg(UWIRE_CSR, val);
   len -= bytes;





   if (wait_uwire_csr_flag(CSRB, CSRB, 1))
    goto eio;

   status += bytes;
  }


  if (wait_uwire_csr_flag(CSRB, 0, 0))
   goto eio;

 } else if (t->rx_buf) {
  u8 *buf = t->rx_buf;


  while (len) {
   if (bits > 8) {
    bytes = 2;
   } else
    bytes = 1;


   val = START | w | (bits << 0);
   uwire_write_reg(UWIRE_CSR, val);
   len -= bytes;


   (void) wait_uwire_csr_flag(CSRB, CSRB, 1);

   if (wait_uwire_csr_flag(RDRB | CSRB,
      RDRB, 0))
    goto eio;




   val = uwire_read_reg(UWIRE_RDR);
   val &= (1 << bits) - 1;
   *buf++ = (u8) val;
   if (bytes == 2)
    *buf++ = val >> 8;
   status += bytes;





  }
 }
 return status;
eio:
 return -EIO;
}
