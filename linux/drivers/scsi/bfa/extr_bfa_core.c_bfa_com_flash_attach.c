
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int trcmod; int ioc; } ;
struct bfa_mem_dma_s {int dma_curp; int kva_curp; } ;
struct bfa_flash_s {int dummy; } ;
typedef int bfa_boolean_t ;


 struct bfa_flash_s* BFA_FLASH (struct bfa_s*) ;
 struct bfa_mem_dma_s* BFA_MEM_FLASH_DMA (struct bfa_s*) ;
 int bfa_flash_attach (struct bfa_flash_s*,int *,struct bfa_s*,int ,int ) ;
 int bfa_flash_memclaim (struct bfa_flash_s*,int ,int ,int ) ;

__attribute__((used)) static void
bfa_com_flash_attach(struct bfa_s *bfa, bfa_boolean_t mincfg)
{
 struct bfa_flash_s *flash = BFA_FLASH(bfa);
 struct bfa_mem_dma_s *flash_dma = BFA_MEM_FLASH_DMA(bfa);

 bfa_flash_attach(flash, &bfa->ioc, bfa, bfa->trcmod, mincfg);
 bfa_flash_memclaim(flash, flash_dma->kva_curp,
      flash_dma->dma_curp, mincfg);
}
