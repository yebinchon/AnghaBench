
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct spi_transfer {scalar_t__ len; scalar_t__ tx_dma; scalar_t__ rx_dma; scalar_t__ tx_buf; scalar_t__ rx_buf; } ;
struct spi_device {int master; } ;
struct au1550_spi {scalar_t__ len; scalar_t__ tx_count; scalar_t__ rx_count; scalar_t__ dma_rx_tmpbuf_size; scalar_t__ dma_rx_tmpbuf_addr; int dev; int dma_rx_ch; int dma_tx_ch; int master_done; TYPE_1__* regs; scalar_t__ tx; scalar_t__ rx; scalar_t__ dma_rx_tmpbuf; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int psc_spipcr; int psc_spimsk; } ;


 int AU1550_SPI_DMA_RXTMP_MINSIZE ;
 int DDMA_FLAGS_IE ;
 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int PSC_SPIMSK_SD ;
 int PSC_SPIPCR_MS ;
 int au1550_spi_dma_rxtmp_alloc (struct au1550_spi*,int ) ;
 int au1550_spi_dma_rxtmp_free (struct au1550_spi*) ;
 scalar_t__ au1xxx_dbdma_put_dest (int ,int ,scalar_t__,int ) ;
 scalar_t__ au1xxx_dbdma_put_source (int ,int ,scalar_t__,int ) ;
 int au1xxx_dbdma_start (int ) ;
 int au1xxx_dbdma_stop (int ) ;
 int dev_err (int ,char*) ;
 scalar_t__ dma_map_single (int ,void*,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int dma_sync_single_for_cpu (int ,scalar_t__,scalar_t__,int ) ;
 int dma_sync_single_for_device (int ,scalar_t__,scalar_t__,int ) ;
 int dma_unmap_single (int ,scalar_t__,scalar_t__,int ) ;
 int max (scalar_t__,int ) ;
 struct au1550_spi* spi_master_get_devdata (int ) ;
 int virt_to_phys (scalar_t__) ;
 int wait_for_completion (int *) ;
 int wmb () ;

__attribute__((used)) static int au1550_spi_dma_txrxb(struct spi_device *spi, struct spi_transfer *t)
{
 struct au1550_spi *hw = spi_master_get_devdata(spi->master);
 dma_addr_t dma_tx_addr;
 dma_addr_t dma_rx_addr;
 u32 res;

 hw->len = t->len;
 hw->tx_count = 0;
 hw->rx_count = 0;

 hw->tx = t->tx_buf;
 hw->rx = t->rx_buf;
 dma_tx_addr = t->tx_dma;
 dma_rx_addr = t->rx_dma;
 if (t->tx_buf) {
  if (t->tx_dma == 0) {
   dma_tx_addr = dma_map_single(hw->dev,
     (void *)t->tx_buf,
     t->len, DMA_TO_DEVICE);
   if (dma_mapping_error(hw->dev, dma_tx_addr))
    dev_err(hw->dev, "tx dma map error\n");
  }
 }

 if (t->rx_buf) {
  if (t->rx_dma == 0) {
   dma_rx_addr = dma_map_single(hw->dev,
     (void *)t->rx_buf,
     t->len, DMA_FROM_DEVICE);
   if (dma_mapping_error(hw->dev, dma_rx_addr))
    dev_err(hw->dev, "rx dma map error\n");
  }
 } else {
  if (t->len > hw->dma_rx_tmpbuf_size) {
   int ret;

   au1550_spi_dma_rxtmp_free(hw);
   ret = au1550_spi_dma_rxtmp_alloc(hw, max(t->len,
     AU1550_SPI_DMA_RXTMP_MINSIZE));
   if (ret < 0)
    return ret;
  }
  hw->rx = hw->dma_rx_tmpbuf;
  dma_rx_addr = hw->dma_rx_tmpbuf_addr;
  dma_sync_single_for_device(hw->dev, dma_rx_addr,
   t->len, DMA_FROM_DEVICE);
 }

 if (!t->tx_buf) {
  dma_sync_single_for_device(hw->dev, dma_rx_addr,
    t->len, DMA_BIDIRECTIONAL);
  hw->tx = hw->rx;
 }


 res = au1xxx_dbdma_put_dest(hw->dma_rx_ch, virt_to_phys(hw->rx),
        t->len, DDMA_FLAGS_IE);
 if (!res)
  dev_err(hw->dev, "rx dma put dest error\n");

 res = au1xxx_dbdma_put_source(hw->dma_tx_ch, virt_to_phys(hw->tx),
          t->len, DDMA_FLAGS_IE);
 if (!res)
  dev_err(hw->dev, "tx dma put source error\n");

 au1xxx_dbdma_start(hw->dma_rx_ch);
 au1xxx_dbdma_start(hw->dma_tx_ch);


 hw->regs->psc_spimsk = PSC_SPIMSK_SD;
 wmb();


 hw->regs->psc_spipcr = PSC_SPIPCR_MS;
 wmb();

 wait_for_completion(&hw->master_done);

 au1xxx_dbdma_stop(hw->dma_tx_ch);
 au1xxx_dbdma_stop(hw->dma_rx_ch);

 if (!t->rx_buf) {

  dma_sync_single_for_cpu(hw->dev, dma_rx_addr, t->len,
   DMA_FROM_DEVICE);
 }

 if (t->rx_buf && t->rx_dma == 0 )
  dma_unmap_single(hw->dev, dma_rx_addr, t->len,
   DMA_FROM_DEVICE);
 if (t->tx_buf && t->tx_dma == 0 )
  dma_unmap_single(hw->dev, dma_tx_addr, t->len,
   DMA_TO_DEVICE);

 return hw->rx_count < hw->tx_count ? hw->rx_count : hw->tx_count;
}
