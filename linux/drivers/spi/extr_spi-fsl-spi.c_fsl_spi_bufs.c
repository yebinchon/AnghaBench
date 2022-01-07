
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {unsigned int len; int bits_per_word; int rx_buf; int tx_buf; } ;
struct spi_device {int bits_per_word; int master; } ;
struct mpc8xxx_spi {int flags; int count; int done; int rx; int tx; struct fsl_spi_reg* reg_base; } ;
struct fsl_spi_reg {int mask; } ;


 int EINVAL ;
 int SPI_CPM_MODE ;
 int fsl_spi_cpm_bufs (struct mpc8xxx_spi*,struct spi_transfer*,int) ;
 int fsl_spi_cpm_bufs_complete (struct mpc8xxx_spi*) ;
 int fsl_spi_cpu_bufs (struct mpc8xxx_spi*,struct spi_transfer*,unsigned int) ;
 int mpc8xxx_spi_write_reg (int *,int ) ;
 int reinit_completion (int *) ;
 struct mpc8xxx_spi* spi_master_get_devdata (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int fsl_spi_bufs(struct spi_device *spi, struct spi_transfer *t,
       bool is_dma_mapped)
{
 struct mpc8xxx_spi *mpc8xxx_spi = spi_master_get_devdata(spi->master);
 struct fsl_spi_reg *reg_base;
 unsigned int len = t->len;
 u8 bits_per_word;
 int ret;

 reg_base = mpc8xxx_spi->reg_base;
 bits_per_word = spi->bits_per_word;
 if (t->bits_per_word)
  bits_per_word = t->bits_per_word;

 if (bits_per_word > 8) {

  if (len & 1)
   return -EINVAL;
  len /= 2;
 }
 if (bits_per_word > 16) {

  if (len & 1)
   return -EINVAL;
  len /= 2;
 }

 mpc8xxx_spi->tx = t->tx_buf;
 mpc8xxx_spi->rx = t->rx_buf;

 reinit_completion(&mpc8xxx_spi->done);

 if (mpc8xxx_spi->flags & SPI_CPM_MODE)
  ret = fsl_spi_cpm_bufs(mpc8xxx_spi, t, is_dma_mapped);
 else
  ret = fsl_spi_cpu_bufs(mpc8xxx_spi, t, len);
 if (ret)
  return ret;

 wait_for_completion(&mpc8xxx_spi->done);


 mpc8xxx_spi_write_reg(&reg_base->mask, 0);

 if (mpc8xxx_spi->flags & SPI_CPM_MODE)
  fsl_spi_cpm_bufs_complete(mpc8xxx_spi);

 return mpc8xxx_spi->count;
}
