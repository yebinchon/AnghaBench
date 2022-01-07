
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_desc {int dummy; } ;
struct mtk_hsdma_chan {scalar_t__ next_sg; int * desc; int vchan; } ;


 int * to_mtk_hsdma_desc (struct virt_dma_desc*) ;
 struct virt_dma_desc* vchan_next_desc (int *) ;

__attribute__((used)) static int gdma_next_desc(struct mtk_hsdma_chan *chan)
{
 struct virt_dma_desc *vdesc;

 vdesc = vchan_next_desc(&chan->vchan);
 if (!vdesc) {
  chan->desc = ((void*)0);
  return 0;
 }
 chan->desc = to_mtk_hsdma_desc(vdesc);
 chan->next_sg = 0;

 return 1;
}
