
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {unsigned int len; int* tx_buf; int* rx_buf; } ;
struct spi_message {TYPE_1__* spi; } ;
struct sc18is602 {int tlen; int* buffer; int rindex; int client; } ;
struct TYPE_2__ {int chip_select; } ;


 int EIO ;
 int SC18IS602_BUFSIZ ;
 int i2c_master_recv (int ,int*,int) ;
 int i2c_master_send (int ,int*,int) ;
 int memcpy (int*,int*,unsigned int) ;
 int memset (int*,int ,unsigned int) ;
 int sc18is602_wait_ready (struct sc18is602*,int) ;

__attribute__((used)) static int sc18is602_txrx(struct sc18is602 *hw, struct spi_message *msg,
     struct spi_transfer *t, bool do_transfer)
{
 unsigned int len = t->len;
 int ret;

 if (hw->tlen == 0) {

  hw->buffer[0] = 1 << msg->spi->chip_select;
  hw->tlen = 1;
  hw->rindex = 0;
 }





 if (t->tx_buf) {
  memcpy(&hw->buffer[hw->tlen], t->tx_buf, len);
  hw->tlen += len;
  if (t->rx_buf)
   do_transfer = 1;
  else
   hw->rindex = hw->tlen - 1;
 } else if (t->rx_buf) {






  hw->rindex = hw->tlen - 1;
  memset(&hw->buffer[hw->tlen], 0, len);
  hw->tlen += len;
  do_transfer = 1;
 }

 if (do_transfer && hw->tlen > 1) {
  ret = sc18is602_wait_ready(hw, SC18IS602_BUFSIZ);
  if (ret < 0)
   return ret;
  ret = i2c_master_send(hw->client, hw->buffer, hw->tlen);
  if (ret < 0)
   return ret;
  if (ret != hw->tlen)
   return -EIO;

  if (t->rx_buf) {
   int rlen = hw->rindex + len;

   ret = sc18is602_wait_ready(hw, hw->tlen);
   if (ret < 0)
    return ret;
   ret = i2c_master_recv(hw->client, hw->buffer, rlen);
   if (ret < 0)
    return ret;
   if (ret != rlen)
    return -EIO;
   memcpy(t->rx_buf, &hw->buffer[hw->rindex], len);
  }
  hw->tlen = 0;
 }
 return len;
}
