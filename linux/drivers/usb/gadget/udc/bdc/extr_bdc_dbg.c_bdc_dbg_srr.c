
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bdc_sr {int * offset; } ;
struct TYPE_2__ {struct bdc_sr* sr_bds; int dqp_index; scalar_t__ dma_addr; } ;
struct bdc {int dev; TYPE_1__ srr; } ;
typedef scalar_t__ dma_addr_t ;


 int NUM_SR_ENTRIES ;
 int dev_vdbg (int ,char*,...) ;
 int le32_to_cpu (int ) ;

void bdc_dbg_srr(struct bdc *bdc, u32 srr_num)
{
 struct bdc_sr *sr;
 dma_addr_t addr;
 int i;

 sr = bdc->srr.sr_bds;
 addr = bdc->srr.dma_addr;
 dev_vdbg(bdc->dev, "bdc_dbg_srr sr:%p dqp_index:%d\n",
      sr, bdc->srr.dqp_index);
 for (i = 0; i < NUM_SR_ENTRIES; i++) {
  sr = &bdc->srr.sr_bds[i];
  dev_vdbg(bdc->dev, "%llx %08x %08x %08x %08x\n",
     (unsigned long long)addr,
     le32_to_cpu(sr->offset[0]),
     le32_to_cpu(sr->offset[1]),
     le32_to_cpu(sr->offset[2]),
     le32_to_cpu(sr->offset[3]));
  addr += sizeof(*sr);
 }
}
