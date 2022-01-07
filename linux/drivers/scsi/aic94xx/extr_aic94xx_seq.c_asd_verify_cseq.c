
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct asd_ha_struct {int pcidev; } ;


 int ASD_DPRINTK (char*,scalar_t__) ;
 scalar_t__ CSEQ_RAM_REG_BASE_ADR ;
 int asd_printk (char*,int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ asd_read_reg_dword (struct asd_ha_struct*,scalar_t__) ;
 scalar_t__ le32_to_cpu (scalar_t__ const) ;
 int pci_name (int ) ;

__attribute__((used)) static int asd_verify_cseq(struct asd_ha_struct *asd_ha, const u8 *_prog,
      u32 size)
{
 u32 addr = CSEQ_RAM_REG_BASE_ADR;
 const u32 *prog = (u32 *) _prog;
 u32 i;

 for (i = 0; i < size; i += 4, prog++, addr += 4) {
  u32 val = asd_read_reg_dword(asd_ha, addr);

  if (le32_to_cpu(*prog) != val) {
   asd_printk("%s: cseq verify failed at %u "
       "read:0x%x, wanted:0x%x\n",
       pci_name(asd_ha->pcidev),
       i, val, le32_to_cpu(*prog));
   return -1;
  }
 }
 ASD_DPRINTK("verified %d bytes, passed\n", size);
 return 0;
}
