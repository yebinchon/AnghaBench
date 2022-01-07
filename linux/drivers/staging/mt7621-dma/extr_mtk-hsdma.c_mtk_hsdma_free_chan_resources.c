
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;


 int to_virt_chan (struct dma_chan*) ;
 int vchan_free_chan_resources (int ) ;

__attribute__((used)) static void mtk_hsdma_free_chan_resources(struct dma_chan *c)
{
 vchan_free_chan_resources(to_virt_chan(c));
}
