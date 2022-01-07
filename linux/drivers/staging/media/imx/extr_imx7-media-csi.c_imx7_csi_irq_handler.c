
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx7_csi {int buf_num; int last_eof; int irqlock; int last_eof_completion; int dev; } ;
typedef int irqreturn_t ;


 int BIT_ADDR_CH_ERR_INT ;
 int BIT_DMA_TSF_DONE_FB1 ;
 int BIT_DMA_TSF_DONE_FB2 ;
 int BIT_HRESP_ERR_INT ;
 int BIT_RFF_OR_INT ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int dev_warn (int ,char*) ;
 int imx7_csi_dma_reflash (struct imx7_csi*) ;
 int imx7_csi_error_recovery (struct imx7_csi*) ;
 int imx7_csi_hw_disable (struct imx7_csi*) ;
 int imx7_csi_hw_enable (struct imx7_csi*) ;
 int imx7_csi_irq_clear (struct imx7_csi*) ;
 int imx7_csi_vb2_buf_done (struct imx7_csi*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t imx7_csi_irq_handler(int irq, void *data)
{
 struct imx7_csi *csi = data;
 u32 status;

 spin_lock(&csi->irqlock);

 status = imx7_csi_irq_clear(csi);

 if (status & BIT_RFF_OR_INT) {
  dev_warn(csi->dev, "Rx fifo overflow\n");
  imx7_csi_error_recovery(csi);
 }

 if (status & BIT_HRESP_ERR_INT) {
  dev_warn(csi->dev, "Hresponse error detected\n");
  imx7_csi_error_recovery(csi);
 }

 if (status & BIT_ADDR_CH_ERR_INT) {
  imx7_csi_hw_disable(csi);

  imx7_csi_dma_reflash(csi);

  imx7_csi_hw_enable(csi);
 }

 if ((status & BIT_DMA_TSF_DONE_FB1) &&
     (status & BIT_DMA_TSF_DONE_FB2)) {
 } else if (status & BIT_DMA_TSF_DONE_FB1) {
  csi->buf_num = 0;
 } else if (status & BIT_DMA_TSF_DONE_FB2) {
  csi->buf_num = 1;
 }

 if ((status & BIT_DMA_TSF_DONE_FB1) ||
     (status & BIT_DMA_TSF_DONE_FB2)) {
  imx7_csi_vb2_buf_done(csi);

  if (csi->last_eof) {
   complete(&csi->last_eof_completion);
   csi->last_eof = 0;
  }
 }

 spin_unlock(&csi->irqlock);

 return IRQ_HANDLED;
}
