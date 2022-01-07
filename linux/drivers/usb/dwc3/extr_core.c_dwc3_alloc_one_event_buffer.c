
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_event_buffer {unsigned int length; int buf; int dma; void* cache; struct dwc3* dwc; } ;
struct dwc3 {int sysdev; int dev; } ;


 int ENOMEM ;
 struct dwc3_event_buffer* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 void* devm_kzalloc (int ,unsigned int,int ) ;
 int dma_alloc_coherent (int ,unsigned int,int *,int ) ;

__attribute__((used)) static struct dwc3_event_buffer *dwc3_alloc_one_event_buffer(struct dwc3 *dwc,
  unsigned length)
{
 struct dwc3_event_buffer *evt;

 evt = devm_kzalloc(dwc->dev, sizeof(*evt), GFP_KERNEL);
 if (!evt)
  return ERR_PTR(-ENOMEM);

 evt->dwc = dwc;
 evt->length = length;
 evt->cache = devm_kzalloc(dwc->dev, length, GFP_KERNEL);
 if (!evt->cache)
  return ERR_PTR(-ENOMEM);

 evt->buf = dma_alloc_coherent(dwc->sysdev, length,
   &evt->dma, GFP_KERNEL);
 if (!evt->buf)
  return ERR_PTR(-ENOMEM);

 return evt;
}
