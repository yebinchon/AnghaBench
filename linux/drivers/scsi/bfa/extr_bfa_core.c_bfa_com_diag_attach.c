
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int trcmod; int ioc; } ;
struct bfa_mem_dma_s {int dma_curp; int kva_curp; } ;
struct bfa_diag_s {int dummy; } ;


 struct bfa_diag_s* BFA_DIAG_MOD (struct bfa_s*) ;
 struct bfa_mem_dma_s* BFA_MEM_DIAG_DMA (struct bfa_s*) ;
 int bfa_diag_attach (struct bfa_diag_s*,int *,struct bfa_s*,int ,int ) ;
 int bfa_diag_memclaim (struct bfa_diag_s*,int ,int ) ;
 int bfa_fcport_beacon ;

__attribute__((used)) static void
bfa_com_diag_attach(struct bfa_s *bfa)
{
 struct bfa_diag_s *diag = BFA_DIAG_MOD(bfa);
 struct bfa_mem_dma_s *diag_dma = BFA_MEM_DIAG_DMA(bfa);

 bfa_diag_attach(diag, &bfa->ioc, bfa, bfa_fcport_beacon, bfa->trcmod);
 bfa_diag_memclaim(diag, diag_dma->kva_curp, diag_dma->dma_curp);
}
