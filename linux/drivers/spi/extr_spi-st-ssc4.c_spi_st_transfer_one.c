
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct spi_transfer {int len; int rx_buf; int tx_buf; } ;
struct spi_st {int bytes_per_word; int words_remaining; scalar_t__ base; int done; int rx_ptr; int tx_ptr; } ;
struct spi_master {int dummy; } ;
struct spi_device {int bits_per_word; int master; } ;


 scalar_t__ SSC_CTL ;
 scalar_t__ SSC_IEN ;
 int SSC_IEN_TEEN ;
 scalar_t__ SSC_RBUF ;
 int readl_relaxed (scalar_t__) ;
 int reinit_completion (int *) ;
 int spi_finalize_current_transfer (int ) ;
 struct spi_st* spi_master_get_devdata (struct spi_master*) ;
 int ssc_write_tx_fifo (struct spi_st*) ;
 int wait_for_completion (int *) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int spi_st_transfer_one(struct spi_master *master,
          struct spi_device *spi, struct spi_transfer *t)
{
 struct spi_st *spi_st = spi_master_get_devdata(master);
 uint32_t ctl = 0;


 spi_st->tx_ptr = t->tx_buf;
 spi_st->rx_ptr = t->rx_buf;

 if (spi->bits_per_word > 8) {




  spi_st->bytes_per_word = 2;
  spi_st->words_remaining = t->len / 2;

 } else if (spi->bits_per_word == 8 && !(t->len & 0x1)) {




  spi_st->bytes_per_word = 2;
  spi_st->words_remaining = t->len / 2;


  ctl = readl_relaxed(spi_st->base + SSC_CTL);
  writel_relaxed((ctl | 0xf), spi_st->base + SSC_CTL);

  readl_relaxed(spi_st->base + SSC_RBUF);

 } else {
  spi_st->bytes_per_word = 1;
  spi_st->words_remaining = t->len;
 }

 reinit_completion(&spi_st->done);


 ssc_write_tx_fifo(spi_st);
 writel_relaxed(SSC_IEN_TEEN, spi_st->base + SSC_IEN);


 wait_for_completion(&spi_st->done);


 if (ctl)
  writel_relaxed(ctl, spi_st->base + SSC_CTL);

 spi_finalize_current_transfer(spi->master);

 return t->len;
}
