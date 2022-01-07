
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_cee_s {int trcmod; } ;
struct TYPE_2__ {struct bfa_cee_s cee; } ;
struct bfa_s {int ioc; int trcmod; TYPE_1__ modules; } ;
struct bfa_mem_dma_s {int dma_curp; int kva_curp; } ;


 struct bfa_mem_dma_s* BFA_MEM_CEE_DMA (struct bfa_s*) ;
 int bfa_cee_attach (struct bfa_cee_s*,int *,struct bfa_s*) ;
 int bfa_cee_mem_claim (struct bfa_cee_s*,int ,int ) ;

__attribute__((used)) static void
bfa_com_cee_attach(struct bfa_s *bfa)
{
 struct bfa_cee_s *cee = &bfa->modules.cee;
 struct bfa_mem_dma_s *cee_dma = BFA_MEM_CEE_DMA(bfa);

 cee->trcmod = bfa->trcmod;
 bfa_cee_attach(cee, &bfa->ioc, bfa);
 bfa_cee_mem_claim(cee, cee_dma->kva_curp, cee_dma->dma_curp);
}
