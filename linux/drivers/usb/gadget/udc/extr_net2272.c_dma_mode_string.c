
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dma_mode ;
 int use_dma ;

__attribute__((used)) static char *dma_mode_string(void)
{
 if (!use_dma)
  return "PIO";
 switch (dma_mode) {
 case 0: return "SLOW DREQ";
 case 1: return "FAST DREQ";
 case 2: return "BURST";
 default: return "invalid";
 }
}
