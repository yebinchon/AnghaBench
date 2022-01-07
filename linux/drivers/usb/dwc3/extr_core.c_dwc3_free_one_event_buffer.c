
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_event_buffer {int dma; int buf; int length; } ;
struct dwc3 {int sysdev; } ;


 int dma_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static void dwc3_free_one_event_buffer(struct dwc3 *dwc,
  struct dwc3_event_buffer *evt)
{
 dma_free_coherent(dwc->sysdev, evt->length, evt->buf, evt->dma);
}
