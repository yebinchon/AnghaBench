
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx7_csi {int last_eof; int underrun_buf; int dev; int sd; int last_eof_completion; int irqlock; } ;


 int IMX_MEDIA_EOF_TIMEOUT ;
 int VB2_BUF_STATE_ERROR ;
 int imx7_csi_dma_unsetup_vb2_buf (struct imx7_csi*,int ) ;
 int imx7_csi_hw_disable_irq (struct imx7_csi*) ;
 int imx_media_free_dma_buf (int ,int *) ;
 unsigned long msecs_to_jiffies (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_warn (int *,char*) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static void imx7_csi_dma_stop(struct imx7_csi *csi)
{
 unsigned long timeout_jiffies;
 unsigned long flags;
 int ret;


 spin_lock_irqsave(&csi->irqlock, flags);
 csi->last_eof = 1;
 spin_unlock_irqrestore(&csi->irqlock, flags);




 timeout_jiffies = msecs_to_jiffies(IMX_MEDIA_EOF_TIMEOUT);
 ret = wait_for_completion_timeout(&csi->last_eof_completion,
       timeout_jiffies);
 if (ret == 0)
  v4l2_warn(&csi->sd, "wait last EOF timeout\n");

 imx7_csi_hw_disable_irq(csi);

 imx7_csi_dma_unsetup_vb2_buf(csi, VB2_BUF_STATE_ERROR);

 imx_media_free_dma_buf(csi->dev, &csi->underrun_buf);
}
