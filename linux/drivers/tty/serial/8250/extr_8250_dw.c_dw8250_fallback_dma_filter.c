
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;



__attribute__((used)) static bool dw8250_fallback_dma_filter(struct dma_chan *chan, void *param)
{
 return 0;
}
