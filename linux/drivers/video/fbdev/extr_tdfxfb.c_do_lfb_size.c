
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tdfx_par {int dummy; } ;


 int DRAMINIT0 ;
 int DRAMINIT0_SGRAM_NUM ;
 int DRAMINIT0_SGRAM_TYPE ;
 int DRAMINIT0_SGRAM_TYPE_MASK ;
 int DRAMINIT0_SGRAM_TYPE_SHIFT ;
 int DRAMINIT1 ;
 int DRAMINIT1_MEM_SDRAM ;
 int MISCINIT1 ;
 int MISCINIT1_2DBLOCK_DIS ;
 int MISCINIT1_CLUT_INV ;
 unsigned short PCI_DEVICE_ID_3DFX_VOODOO5 ;
 int banshee_make_room (struct tdfx_par*,int) ;
 int tdfx_inl (struct tdfx_par*,int ) ;
 int tdfx_outl (struct tdfx_par*,int ,int) ;

__attribute__((used)) static unsigned long do_lfb_size(struct tdfx_par *par, unsigned short dev_id)
{
 u32 draminit0 = tdfx_inl(par, DRAMINIT0);
 u32 draminit1 = tdfx_inl(par, DRAMINIT1);
 u32 miscinit1;
 int num_chips = (draminit0 & DRAMINIT0_SGRAM_NUM) ? 8 : 4;
 int chip_size;
 int has_sgram = draminit1 & DRAMINIT1_MEM_SDRAM;

 if (dev_id < PCI_DEVICE_ID_3DFX_VOODOO5) {

  chip_size = 2;
  if (has_sgram && !(draminit0 & DRAMINIT0_SGRAM_TYPE))
   chip_size = 1;
 } else {

  has_sgram = 0;
  chip_size = draminit0 & DRAMINIT0_SGRAM_TYPE_MASK;
  chip_size = 1 << (chip_size >> DRAMINIT0_SGRAM_TYPE_SHIFT);
 }


 miscinit1 = tdfx_inl(par, MISCINIT1);
 miscinit1 |= has_sgram ? 0 : MISCINIT1_2DBLOCK_DIS;
 miscinit1 |= MISCINIT1_CLUT_INV;

 banshee_make_room(par, 1);
 tdfx_outl(par, MISCINIT1, miscinit1);
 return num_chips * chip_size * 1024l * 1024;
}
