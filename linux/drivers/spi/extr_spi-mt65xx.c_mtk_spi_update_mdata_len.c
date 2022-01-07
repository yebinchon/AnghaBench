
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct mtk_spi {int tx_sgl_len; int rx_sgl_len; int xfer_len; } ;


 int mtk_spi_get_mult_delta (int) ;
 struct mtk_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static void mtk_spi_update_mdata_len(struct spi_master *master)
{
 int mult_delta;
 struct mtk_spi *mdata = spi_master_get_devdata(master);

 if (mdata->tx_sgl_len && mdata->rx_sgl_len) {
  if (mdata->tx_sgl_len > mdata->rx_sgl_len) {
   mult_delta = mtk_spi_get_mult_delta(mdata->rx_sgl_len);
   mdata->xfer_len = mdata->rx_sgl_len - mult_delta;
   mdata->rx_sgl_len = mult_delta;
   mdata->tx_sgl_len -= mdata->xfer_len;
  } else {
   mult_delta = mtk_spi_get_mult_delta(mdata->tx_sgl_len);
   mdata->xfer_len = mdata->tx_sgl_len - mult_delta;
   mdata->tx_sgl_len = mult_delta;
   mdata->rx_sgl_len -= mdata->xfer_len;
  }
 } else if (mdata->tx_sgl_len) {
  mult_delta = mtk_spi_get_mult_delta(mdata->tx_sgl_len);
  mdata->xfer_len = mdata->tx_sgl_len - mult_delta;
  mdata->tx_sgl_len = mult_delta;
 } else if (mdata->rx_sgl_len) {
  mult_delta = mtk_spi_get_mult_delta(mdata->rx_sgl_len);
  mdata->xfer_len = mdata->rx_sgl_len - mult_delta;
  mdata->rx_sgl_len = mult_delta;
 }
}
