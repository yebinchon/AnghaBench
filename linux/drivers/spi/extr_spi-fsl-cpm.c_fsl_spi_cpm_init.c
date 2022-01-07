
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mpc8xxx_spi {int flags; TYPE_1__* pram; void* dma_dummy_tx; TYPE_1__* rx_bd; TYPE_1__* tx_bd; void* dma_dummy_rx; int subblock; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {int txtmp; int tbc; int tbptr; int tdp; int tstate; int rxtmp; int rbc; int rbptr; int rdp; int rstate; int mrblr; int rfcr; int tfcr; int rbase; int tbase; } ;


 int CPMFCR_EB ;
 int CPMFCR_GBL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 scalar_t__ IS_ERR (void*) ;
 scalar_t__ IS_ERR_VALUE (unsigned long) ;
 unsigned long PAGE_SIZE ;
 int QE_CR_SUBBLOCK_SPI1 ;
 int QE_CR_SUBBLOCK_SPI2 ;
 int SPI_CPM1 ;
 int SPI_CPM_MODE ;
 unsigned long SPI_MRBLR ;
 int SPI_QE ;
 void* cpm_muram_addr (unsigned long) ;
 unsigned long cpm_muram_alloc (int,int) ;
 int cpm_muram_free (unsigned long) ;
 unsigned long cpm_muram_offset (TYPE_1__*) ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 void* devm_platform_ioremap_resource (int ,int) ;
 void* dma_map_single (struct device*,int ,unsigned long,int ) ;
 scalar_t__ dma_mapping_error (struct device*,void*) ;
 int dma_unmap_single (struct device*,void*,unsigned long,int ) ;
 int empty_zero_page ;
 int fsl_dummy_rx ;
 int fsl_spi_alloc_dummy_rx () ;
 unsigned long fsl_spi_cpm_get_pram (struct mpc8xxx_spi*) ;
 int fsl_spi_free_dummy_rx () ;
 int * of_get_property (struct device_node*,char*,int*) ;
 int out_8 (int *,int) ;
 int out_be16 (int *,unsigned long) ;
 int out_be32 (int *,int ) ;
 int to_platform_device (struct device*) ;

int fsl_spi_cpm_init(struct mpc8xxx_spi *mspi)
{
 struct device *dev = mspi->dev;
 struct device_node *np = dev->of_node;
 const u32 *iprop;
 int size;
 unsigned long bds_ofs;

 if (!(mspi->flags & SPI_CPM_MODE))
  return 0;

 if (!fsl_spi_alloc_dummy_rx())
  return -ENOMEM;

 if (mspi->flags & SPI_QE) {
  iprop = of_get_property(np, "cell-index", &size);
  if (iprop && size == sizeof(*iprop))
   mspi->subblock = *iprop;

  switch (mspi->subblock) {
  default:
   dev_warn(dev, "cell-index unspecified, assuming SPI1\n");

  case 0:
   mspi->subblock = QE_CR_SUBBLOCK_SPI1;
   break;
  case 1:
   mspi->subblock = QE_CR_SUBBLOCK_SPI2;
   break;
  }
 }

 if (mspi->flags & SPI_CPM1) {
  void *pram;

  pram = devm_platform_ioremap_resource(to_platform_device(dev),
            1);
  if (IS_ERR(pram))
   mspi->pram = ((void*)0);
  else
   mspi->pram = pram;
 } else {
  unsigned long pram_ofs = fsl_spi_cpm_get_pram(mspi);

  if (IS_ERR_VALUE(pram_ofs))
   mspi->pram = ((void*)0);
  else
   mspi->pram = cpm_muram_addr(pram_ofs);
 }
 if (mspi->pram == ((void*)0)) {
  dev_err(dev, "can't allocate spi parameter ram\n");
  goto err_pram;
 }

 bds_ofs = cpm_muram_alloc(sizeof(*mspi->tx_bd) +
      sizeof(*mspi->rx_bd), 8);
 if (IS_ERR_VALUE(bds_ofs)) {
  dev_err(dev, "can't allocate bds\n");
  goto err_bds;
 }

 mspi->dma_dummy_tx = dma_map_single(dev, empty_zero_page, PAGE_SIZE,
         DMA_TO_DEVICE);
 if (dma_mapping_error(dev, mspi->dma_dummy_tx)) {
  dev_err(dev, "unable to map dummy tx buffer\n");
  goto err_dummy_tx;
 }

 mspi->dma_dummy_rx = dma_map_single(dev, fsl_dummy_rx, SPI_MRBLR,
         DMA_FROM_DEVICE);
 if (dma_mapping_error(dev, mspi->dma_dummy_rx)) {
  dev_err(dev, "unable to map dummy rx buffer\n");
  goto err_dummy_rx;
 }

 mspi->tx_bd = cpm_muram_addr(bds_ofs);
 mspi->rx_bd = cpm_muram_addr(bds_ofs + sizeof(*mspi->tx_bd));


 out_be16(&mspi->pram->tbase, cpm_muram_offset(mspi->tx_bd));
 out_be16(&mspi->pram->rbase, cpm_muram_offset(mspi->rx_bd));
 out_8(&mspi->pram->tfcr, CPMFCR_EB | CPMFCR_GBL);
 out_8(&mspi->pram->rfcr, CPMFCR_EB | CPMFCR_GBL);
 out_be16(&mspi->pram->mrblr, SPI_MRBLR);
 out_be32(&mspi->pram->rstate, 0);
 out_be32(&mspi->pram->rdp, 0);
 out_be16(&mspi->pram->rbptr, 0);
 out_be16(&mspi->pram->rbc, 0);
 out_be32(&mspi->pram->rxtmp, 0);
 out_be32(&mspi->pram->tstate, 0);
 out_be32(&mspi->pram->tdp, 0);
 out_be16(&mspi->pram->tbptr, 0);
 out_be16(&mspi->pram->tbc, 0);
 out_be32(&mspi->pram->txtmp, 0);

 return 0;

err_dummy_rx:
 dma_unmap_single(dev, mspi->dma_dummy_tx, PAGE_SIZE, DMA_TO_DEVICE);
err_dummy_tx:
 cpm_muram_free(bds_ofs);
err_bds:
 if (!(mspi->flags & SPI_CPM1))
  cpm_muram_free(cpm_muram_offset(mspi->pram));
err_pram:
 fsl_spi_free_dummy_rx();
 return -ENOMEM;
}
