
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int scratchbuf; int nr_scratch; int has_hibernation; } ;


 int DWC3_SCRATCHBUF_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kmalloc_array (int ,int ,int ) ;

__attribute__((used)) static int dwc3_alloc_scratch_buffers(struct dwc3 *dwc)
{
 if (!dwc->has_hibernation)
  return 0;

 if (!dwc->nr_scratch)
  return 0;

 dwc->scratchbuf = kmalloc_array(dwc->nr_scratch,
   DWC3_SCRATCHBUF_SIZE, GFP_KERNEL);
 if (!dwc->scratchbuf)
  return -ENOMEM;

 return 0;
}
