
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct asd_ha_struct {int pcidev; } ;
struct asd_dma_tok {int dma_handle; int vaddr; } ;


 int ASD_DPRINTK (char*,int) ;
 int CHIMINT ;
 int CHIMINTEN ;
 int CHIMINT_MASK ;
 int COMSTAT ;
 int COMSTATEN ;
 int COMSTAT_MASK ;
 int DEVEXCEPT_MASK ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_DMA_OVLY_COUNT ;
 int OVLYCSEQ ;
 int OVLYDMAACT ;
 int OVLYDMAADR ;
 int OVLYDMACNT ;
 int OVLYDMACTL ;
 int OVLYDMADONE ;
 int OVLYERR ;
 int OVLYHALTERR ;
 int PAUSE_DELAY ;
 int PAUSE_TRIES ;
 int RESETOVLYDMA ;
 int RST_CHIMINTEN ;
 int STARTOVLYDMA ;
 struct asd_dma_tok* asd_alloc_coherent (struct asd_ha_struct*,int,int ) ;
 int asd_free_coherent (struct asd_ha_struct*,struct asd_dma_tok*) ;
 int asd_pause_cseq (struct asd_ha_struct*) ;
 int asd_pause_lseq (struct asd_ha_struct*,int) ;
 int asd_printk (char*,...) ;
 int asd_read_reg_dword (struct asd_ha_struct*,int ) ;
 int asd_verify_seq (struct asd_ha_struct*,scalar_t__ const* const,int,scalar_t__) ;
 int asd_write_reg_addr (struct asd_ha_struct*,int ,int ) ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int) ;
 int memcpy (int ,scalar_t__ const* const,int) ;
 int min (int ,int) ;
 int pci_name (int ) ;
 int udelay (int ) ;

__attribute__((used)) static int asd_download_seq(struct asd_ha_struct *asd_ha,
       const u8 * const prog, u32 size, u8 lseq_mask)
{
 u32 comstaten;
 u32 reg;
 int page;
 const int pages = (size + MAX_DMA_OVLY_COUNT - 1) / MAX_DMA_OVLY_COUNT;
 struct asd_dma_tok *token;
 int err = 0;

 if (size % 4) {
  asd_printk("sequencer program not multiple of 4\n");
  return -1;
 }

 asd_pause_cseq(asd_ha);
 asd_pause_lseq(asd_ha, 0xFF);


 comstaten = asd_read_reg_dword(asd_ha, COMSTATEN);
 asd_write_reg_dword(asd_ha, COMSTATEN, 0);
 asd_write_reg_dword(asd_ha, COMSTAT, COMSTAT_MASK);

 asd_write_reg_dword(asd_ha, CHIMINTEN, RST_CHIMINTEN);
 asd_write_reg_dword(asd_ha, CHIMINT, CHIMINT_MASK);

 token = asd_alloc_coherent(asd_ha, MAX_DMA_OVLY_COUNT, GFP_KERNEL);
 if (!token) {
  asd_printk("out of memory for dma SEQ download\n");
  err = -ENOMEM;
  goto out;
 }
 ASD_DPRINTK("dma-ing %d bytes\n", size);

 for (page = 0; page < pages; page++) {
  int i;
  u32 left = min(size-page*MAX_DMA_OVLY_COUNT,
          (u32)MAX_DMA_OVLY_COUNT);

  memcpy(token->vaddr, prog + page*MAX_DMA_OVLY_COUNT, left);
  asd_write_reg_addr(asd_ha, OVLYDMAADR, token->dma_handle);
  asd_write_reg_dword(asd_ha, OVLYDMACNT, left);
  reg = !page ? RESETOVLYDMA : 0;
  reg |= (STARTOVLYDMA | OVLYHALTERR);
  reg |= (lseq_mask ? (((u32)lseq_mask) << 8) : OVLYCSEQ);

  asd_write_reg_dword(asd_ha, OVLYDMACTL, reg);

  for (i = PAUSE_TRIES*100; i > 0; i--) {
   u32 dmadone = asd_read_reg_dword(asd_ha, OVLYDMACTL);
   if (!(dmadone & OVLYDMAACT))
    break;
   udelay(PAUSE_DELAY);
  }
 }

 reg = asd_read_reg_dword(asd_ha, COMSTAT);
 if (!(reg & OVLYDMADONE) || (reg & OVLYERR)
     || (asd_read_reg_dword(asd_ha, CHIMINT) & DEVEXCEPT_MASK)){
  asd_printk("%s: error DMA-ing sequencer code\n",
      pci_name(asd_ha->pcidev));
  err = -ENODEV;
 }

 asd_free_coherent(asd_ha, token);
 out:
 asd_write_reg_dword(asd_ha, COMSTATEN, comstaten);

 return err ? : asd_verify_seq(asd_ha, prog, size, lseq_mask);
}
