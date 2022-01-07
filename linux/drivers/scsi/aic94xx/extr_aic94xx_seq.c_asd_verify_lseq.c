
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int u32 ;
struct asd_ha_struct {int pcidev; } ;


 int ASD_DPRINTK (char*,int,int) ;
 int LSEQ_CODEPAGE_SIZE ;
 int LmBISTCTL1 (int) ;
 int LmRAMPAGE_LSHIFT ;
 scalar_t__ LmSEQRAM (int) ;
 int asd_printk (char*,int ,int,int,int) ;
 int asd_read_reg_dword (struct asd_ha_struct*,scalar_t__) ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int) ;
 int le32_to_cpu (int const) ;
 int pci_name (int ) ;

__attribute__((used)) static int asd_verify_lseq(struct asd_ha_struct *asd_ha, const u8 *_prog,
      u32 size, int lseq)
{

 int pages = (size + 4096 - 1) / 4096;
 u32 page;
 const u32 *prog = (u32 *) _prog;

 for (page = 0; page < pages; page++) {
  u32 i;

  asd_write_reg_dword(asd_ha, LmBISTCTL1(lseq),
        page << LmRAMPAGE_LSHIFT);
  for (i = 0; size > 0 && i < 4096;
       i += 4, prog++, size-=4) {

   u32 val = asd_read_reg_dword(asd_ha, LmSEQRAM(lseq)+i);

   if (le32_to_cpu(*prog) != val) {
    asd_printk("%s: LSEQ%d verify failed "
        "page:%d, offs:%d\n",
        pci_name(asd_ha->pcidev),
        lseq, page, i);
    return -1;
   }
  }
 }
 ASD_DPRINTK("LSEQ%d verified %d bytes, passed\n", lseq,
      (int)((u8 *)prog-_prog));
 return 0;
}
