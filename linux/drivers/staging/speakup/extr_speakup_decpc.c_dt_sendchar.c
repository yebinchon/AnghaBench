
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port_tts; } ;


 char DMA_single_in ;
 int STAT_dma_state ;
 int STAT_rr_char ;
 int dma_state ;
 int dt_stat ;
 int dt_wait_dma () ;
 int outb_p (char,scalar_t__) ;
 TYPE_1__ speakup_info ;

__attribute__((used)) static int dt_sendchar(char ch)
{
 if (!dt_wait_dma())
  return -1;
 if (!(dt_stat & STAT_rr_char))
  return -2;
 outb_p(DMA_single_in, speakup_info.port_tts + 4);
 outb_p(ch, speakup_info.port_tts + 4);
 dma_state ^= STAT_dma_state;
 return 0;
}
