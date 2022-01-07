
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct msm_dma {int device_fc; int chan; int enable_bit; int dir; int slave_id; int dst_maxburst; scalar_t__ dst_addr; int direction; } ;
struct TYPE_2__ {struct device* dev; } ;
struct msm_port {scalar_t__ is_uartdm; struct msm_dma tx_dma; TYPE_1__ uart; } ;
struct dma_slave_config {int device_fc; int chan; int enable_bit; int dir; int slave_id; int dst_maxburst; scalar_t__ dst_addr; int direction; } ;
struct device {int of_node; } ;
typedef scalar_t__ resource_size_t ;
typedef int conf ;


 int DMA_MEM_TO_DEV ;
 int DMA_TO_DEVICE ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ UARTDM_1P4 ;
 int UARTDM_BURST_SIZE ;
 int UARTDM_DMEN_TX_BAM_ENABLE ;
 int UARTDM_DMEN_TX_DM_ENABLE ;
 scalar_t__ UARTDM_TF ;
 int dma_release_channel (int ) ;
 int dma_request_slave_channel_reason (struct device*,char*) ;
 int dmaengine_slave_config (int ,struct msm_dma*) ;
 int memset (struct msm_dma*,int ,int) ;
 int of_property_read_u32 (int ,char*,int *) ;

__attribute__((used)) static void msm_request_tx_dma(struct msm_port *msm_port, resource_size_t base)
{
 struct device *dev = msm_port->uart.dev;
 struct dma_slave_config conf;
 struct msm_dma *dma;
 u32 crci = 0;
 int ret;

 dma = &msm_port->tx_dma;


 dma->chan = dma_request_slave_channel_reason(dev, "tx");
 if (IS_ERR(dma->chan))
  goto no_tx;

 of_property_read_u32(dev->of_node, "qcom,tx-crci", &crci);

 memset(&conf, 0, sizeof(conf));
 conf.direction = DMA_MEM_TO_DEV;
 conf.device_fc = 1;
 conf.dst_addr = base + UARTDM_TF;
 conf.dst_maxburst = UARTDM_BURST_SIZE;
 conf.slave_id = crci;

 ret = dmaengine_slave_config(dma->chan, &conf);
 if (ret)
  goto rel_tx;

 dma->dir = DMA_TO_DEVICE;

 if (msm_port->is_uartdm < UARTDM_1P4)
  dma->enable_bit = UARTDM_DMEN_TX_DM_ENABLE;
 else
  dma->enable_bit = UARTDM_DMEN_TX_BAM_ENABLE;

 return;

rel_tx:
 dma_release_channel(dma->chan);
no_tx:
 memset(dma, 0, sizeof(*dma));
}
