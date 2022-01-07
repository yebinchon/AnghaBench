
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct spi_transfer {char* tx_buf; int len; char* rx_buf; } ;
struct spi_message {int dummy; } ;


 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;

__attribute__((used)) static void msg_init(struct spi_message *m, struct spi_transfer *x,
  u8 *addr, size_t count, char *tx, char *rx)
{
 spi_message_init(m);
 memset(x, 0, 2 * sizeof(*x));

 x->tx_buf = addr;
 x->len = 1;
 spi_message_add_tail(x, m);

 x++;

 x->tx_buf = tx;
 x->rx_buf = rx;
 x->len = count;
 spi_message_add_tail(x, m);
}
