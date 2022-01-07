
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct switchtec_dev {int pff_csr_count; int* pff_local; TYPE_1__* mmio_pff_csr; struct part_cfg_regs* mmio_part_cfg; } ;
struct part_cfg_regs {int * dsp_pff_inst_id; int vep_pff_inst_id; int usp_pff_inst_id; } ;
struct TYPE_2__ {int vendor_id; } ;


 int ARRAY_SIZE (int *) ;
 int PCI_VENDOR_ID_MICROSEMI ;
 int SWITCHTEC_MAX_PFF_CSR ;
 int ioread16 (int *) ;
 int ioread32 (int *) ;

__attribute__((used)) static void init_pff(struct switchtec_dev *stdev)
{
 int i;
 u32 reg;
 struct part_cfg_regs *pcfg = stdev->mmio_part_cfg;

 for (i = 0; i < SWITCHTEC_MAX_PFF_CSR; i++) {
  reg = ioread16(&stdev->mmio_pff_csr[i].vendor_id);
  if (reg != PCI_VENDOR_ID_MICROSEMI)
   break;
 }

 stdev->pff_csr_count = i;

 reg = ioread32(&pcfg->usp_pff_inst_id);
 if (reg < SWITCHTEC_MAX_PFF_CSR)
  stdev->pff_local[reg] = 1;

 reg = ioread32(&pcfg->vep_pff_inst_id);
 if (reg < SWITCHTEC_MAX_PFF_CSR)
  stdev->pff_local[reg] = 1;

 for (i = 0; i < ARRAY_SIZE(pcfg->dsp_pff_inst_id); i++) {
  reg = ioread32(&pcfg->dsp_pff_inst_id[i]);
  if (reg < SWITCHTEC_MAX_PFF_CSR)
   stdev->pff_local[reg] = 1;
 }
}
