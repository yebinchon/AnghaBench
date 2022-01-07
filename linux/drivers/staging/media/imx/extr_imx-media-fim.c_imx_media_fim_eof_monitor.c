
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_media_fim {int lock; } ;
typedef int ktime_t ;


 int frame_interval_monitor (struct imx_media_fim*,int ) ;
 int icap_enabled (struct imx_media_fim*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void imx_media_fim_eof_monitor(struct imx_media_fim *fim, ktime_t timestamp)
{
 unsigned long flags;

 spin_lock_irqsave(&fim->lock, flags);

 if (!icap_enabled(fim))
  frame_interval_monitor(fim, timestamp);

 spin_unlock_irqrestore(&fim->lock, flags);
}
