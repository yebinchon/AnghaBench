
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spk_synth {int dummy; } ;
struct TYPE_2__ {scalar_t__ port_tts; } ;


 int CTRL_flush ;
 int DMA_sync ;
 int STAT_dma_ready ;
 int STAT_dma_state ;
 int STAT_flushing ;
 int dma_state ;
 scalar_t__ dt_ctrl (int ) ;
 int dt_getstatus () ;
 scalar_t__ dt_waitbit (int ) ;
 scalar_t__ in_escape ;
 int is_flushing ;
 int outb_p (int ,scalar_t__) ;
 TYPE_1__ speakup_info ;
 int udelay (int) ;

__attribute__((used)) static void synth_flush(struct spk_synth *synth)
{
 int timeout = 10;

 if (is_flushing)
  return;
 is_flushing = 4;
 in_escape = 0;
 while (dt_ctrl(CTRL_flush)) {
  if (--timeout == 0)
   break;
  udelay(50);
 }
 for (timeout = 0; timeout < 10; timeout++) {
  if (dt_waitbit(STAT_dma_ready))
   break;
  udelay(50);
 }
 outb_p(DMA_sync, speakup_info.port_tts + 4);
 outb_p(0, speakup_info.port_tts + 4);
 udelay(100);
 for (timeout = 0; timeout < 10; timeout++) {
  if (!(dt_getstatus() & STAT_flushing))
   break;
  udelay(50);
 }
 dma_state = dt_getstatus() & STAT_dma_state;
 dma_state ^= STAT_dma_state;
 is_flushing = 0;
}
