
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int entity; } ;
struct iss_resizer_device {int stopping; int wait; TYPE_1__ subdev; } ;
struct iss_pipeline {int dummy; } ;
struct iss_device {int dev; } ;


 int ISP5_IRQ_RSZ_FIFO_IN_BLK_ERR ;
 int ISP5_IRQ_RSZ_FIFO_OVF ;
 int ISP5_IRQ_RSZ_INT_DMA ;
 int dev_dbg (int ,char*,int,int) ;
 scalar_t__ omap4iss_module_sync_is_stopping (int *,int *) ;
 int omap4iss_pipeline_cancel_stream (struct iss_pipeline*) ;
 int resizer_isr_buffer (struct iss_resizer_device*) ;
 struct iss_device* to_iss_device (struct iss_resizer_device*) ;
 struct iss_pipeline* to_iss_pipeline (int *) ;

void omap4iss_resizer_isr(struct iss_resizer_device *resizer, u32 events)
{
 struct iss_device *iss = to_iss_device(resizer);
 struct iss_pipeline *pipe =
        to_iss_pipeline(&resizer->subdev.entity);

 if (events & (ISP5_IRQ_RSZ_FIFO_IN_BLK_ERR |
        ISP5_IRQ_RSZ_FIFO_OVF)) {
  dev_dbg(iss->dev, "RSZ Err: FIFO_IN_BLK:%d, FIFO_OVF:%d\n",
   events & ISP5_IRQ_RSZ_FIFO_IN_BLK_ERR ? 1 : 0,
   events & ISP5_IRQ_RSZ_FIFO_OVF ? 1 : 0);
  omap4iss_pipeline_cancel_stream(pipe);
 }

 if (omap4iss_module_sync_is_stopping(&resizer->wait,
          &resizer->stopping))
  return;

 if (events & ISP5_IRQ_RSZ_INT_DMA)
  resizer_isr_buffer(resizer);
}
