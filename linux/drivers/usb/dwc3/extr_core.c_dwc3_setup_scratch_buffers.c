
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int nr_scratch; int scratch_addr; int sysdev; int scratchbuf; int has_hibernation; } ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int DWC3_DGCMD_SET_SCRATCHPAD_ADDR_HI ;
 int DWC3_DGCMD_SET_SCRATCHPAD_ADDR_LO ;
 int DWC3_SCRATCHBUF_SIZE ;
 int EFAULT ;
 int WARN_ON (int ) ;
 int dev_err (int ,char*) ;
 int dma_map_single (int ,int ,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int dwc3_send_gadget_generic_command (struct dwc3*,int ,int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int dwc3_setup_scratch_buffers(struct dwc3 *dwc)
{
 dma_addr_t scratch_addr;
 u32 param;
 int ret;

 if (!dwc->has_hibernation)
  return 0;

 if (!dwc->nr_scratch)
  return 0;


 if (!WARN_ON(dwc->scratchbuf))
  return 0;

 scratch_addr = dma_map_single(dwc->sysdev, dwc->scratchbuf,
   dwc->nr_scratch * DWC3_SCRATCHBUF_SIZE,
   DMA_BIDIRECTIONAL);
 if (dma_mapping_error(dwc->sysdev, scratch_addr)) {
  dev_err(dwc->sysdev, "failed to map scratch buffer\n");
  ret = -EFAULT;
  goto err0;
 }

 dwc->scratch_addr = scratch_addr;

 param = lower_32_bits(scratch_addr);

 ret = dwc3_send_gadget_generic_command(dwc,
   DWC3_DGCMD_SET_SCRATCHPAD_ADDR_LO, param);
 if (ret < 0)
  goto err1;

 param = upper_32_bits(scratch_addr);

 ret = dwc3_send_gadget_generic_command(dwc,
   DWC3_DGCMD_SET_SCRATCHPAD_ADDR_HI, param);
 if (ret < 0)
  goto err1;

 return 0;

err1:
 dma_unmap_single(dwc->sysdev, dwc->scratch_addr, dwc->nr_scratch *
   DWC3_SCRATCHBUF_SIZE, DMA_BIDIRECTIONAL);

err0:
 return ret;
}
