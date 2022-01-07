
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; } ;
struct spi_device {int dummy; } ;
struct spi_controller {scalar_t__ (* can_dma ) (struct spi_controller*,struct spi_device*,struct spi_transfer*) ;} ;


 int EREMOTEIO ;
 int spi_finalize_current_transfer (struct spi_controller*) ;
 int sprd_spi_dma_txrx_bufs (struct spi_device*,struct spi_transfer*) ;
 int sprd_spi_setup_transfer (struct spi_device*,struct spi_transfer*) ;
 int sprd_spi_txrx_bufs (struct spi_device*,struct spi_transfer*) ;
 scalar_t__ stub1 (struct spi_controller*,struct spi_device*,struct spi_transfer*) ;

__attribute__((used)) static int sprd_spi_transfer_one(struct spi_controller *sctlr,
     struct spi_device *sdev,
     struct spi_transfer *t)
{
 int ret;

 ret = sprd_spi_setup_transfer(sdev, t);
 if (ret)
  goto setup_err;

 if (sctlr->can_dma(sctlr, sdev, t))
  ret = sprd_spi_dma_txrx_bufs(sdev, t);
 else
  ret = sprd_spi_txrx_bufs(sdev, t);

 if (ret == t->len)
  ret = 0;
 else if (ret >= 0)
  ret = -EREMOTEIO;

setup_err:
 spi_finalize_current_transfer(sctlr);

 return ret;
}
