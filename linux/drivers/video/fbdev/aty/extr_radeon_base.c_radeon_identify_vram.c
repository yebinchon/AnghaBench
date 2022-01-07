
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeonfb_info {scalar_t__ family; int video_ram; int vram_ddr; int vram_width; TYPE_1__* pdev; scalar_t__ is_IGP; } ;
struct TYPE_2__ {int device; } ;


 scalar_t__ CHIP_FAMILY_R300 ;
 scalar_t__ CHIP_FAMILY_RC410 ;
 scalar_t__ CHIP_FAMILY_RS100 ;
 scalar_t__ CHIP_FAMILY_RS200 ;
 scalar_t__ CHIP_FAMILY_RS300 ;
 scalar_t__ CHIP_FAMILY_RS400 ;
 scalar_t__ CHIP_FAMILY_RS480 ;
 scalar_t__ CHIP_FAMILY_RV100 ;
 int CNFG_MEMSIZE ;
 int CNFG_MEMSIZE_MASK ;
 int CRTC2_DISPLAY_BASE_ADDR ;
 int CRTC_H_CUTOFF_ACTIVE_EN ;
 int CRTC_MORE_CNTL ;
 int DISPLAY_BASE_ADDR ;
 int GRPH2_BUFFER_CNTL ;
 int INREG (int ) ;
 scalar_t__ IS_R300_VARIANT (struct radeonfb_info*) ;
 int MC_FB_LOCATION ;
 int MEM_CNTL ;
 int MEM_NUM_CHANNELS_MASK ;
 int MEM_SDRAM_MODE_REG ;
 int NB_TOM ;
 int OUTREG (int ,int) ;
 int OUTREGP (int ,int ,int ) ;
 int OV0_BASE_ADDR ;


 int R300_MEM_NUM_CHANNELS_MASK ;
 int RV100_MEM_HALF_MODE ;
 int pci_name (TYPE_1__*) ;
 int pr_debug (char*,int ,int,char*,int) ;
 int radeon_fifo_wait (int) ;

__attribute__((used)) static void radeon_identify_vram(struct radeonfb_info *rinfo)
{
 u32 tmp;


        if ((rinfo->family == CHIP_FAMILY_RS100) ||
            (rinfo->family == CHIP_FAMILY_RS200) ||
            (rinfo->family == CHIP_FAMILY_RS300) ||
            (rinfo->family == CHIP_FAMILY_RC410) ||
            (rinfo->family == CHIP_FAMILY_RS400) ||
     (rinfo->family == CHIP_FAMILY_RS480) ) {
          u32 tom = INREG(NB_TOM);
          tmp = ((((tom >> 16) - (tom & 0xffff) + 1) << 6) * 1024);

   radeon_fifo_wait(6);
          OUTREG(MC_FB_LOCATION, tom);
          OUTREG(DISPLAY_BASE_ADDR, (tom & 0xffff) << 16);
          OUTREG(CRTC2_DISPLAY_BASE_ADDR, (tom & 0xffff) << 16);
          OUTREG(OV0_BASE_ADDR, (tom & 0xffff) << 16);


          OUTREG(GRPH2_BUFFER_CNTL, INREG(GRPH2_BUFFER_CNTL) & ~0x7f0000);

          if ((rinfo->family == CHIP_FAMILY_RS100) ||
              (rinfo->family == CHIP_FAMILY_RS200)) {



             OUTREGP(CRTC_MORE_CNTL, CRTC_H_CUTOFF_ACTIVE_EN,
                     ~CRTC_H_CUTOFF_ACTIVE_EN);
          }
        } else {
          tmp = INREG(CNFG_MEMSIZE);
        }


 rinfo->video_ram = tmp & CNFG_MEMSIZE_MASK;





 if (rinfo->video_ram == 0) {
  switch (rinfo->pdev->device) {
         case 129:
  case 128:
          rinfo->video_ram = 8192 * 1024;
          break;
         default:
          break;
  }
 }





 if (rinfo->is_IGP || (rinfo->family >= CHIP_FAMILY_R300) ||
     (INREG(MEM_SDRAM_MODE_REG) & (1<<30)))
  rinfo->vram_ddr = 1;
 else
  rinfo->vram_ddr = 0;

 tmp = INREG(MEM_CNTL);
 if (IS_R300_VARIANT(rinfo)) {
  tmp &= R300_MEM_NUM_CHANNELS_MASK;
  switch (tmp) {
  case 0: rinfo->vram_width = 64; break;
  case 1: rinfo->vram_width = 128; break;
  case 2: rinfo->vram_width = 256; break;
  default: rinfo->vram_width = 128; break;
  }
 } else if ((rinfo->family == CHIP_FAMILY_RV100) ||
     (rinfo->family == CHIP_FAMILY_RS100) ||
     (rinfo->family == CHIP_FAMILY_RS200)){
  if (tmp & RV100_MEM_HALF_MODE)
   rinfo->vram_width = 32;
  else
   rinfo->vram_width = 64;
 } else {
  if (tmp & MEM_NUM_CHANNELS_MASK)
   rinfo->vram_width = 128;
  else
   rinfo->vram_width = 64;
 }





 pr_debug("radeonfb (%s): Found %ldk of %s %d bits wide videoram\n",
        pci_name(rinfo->pdev),
        rinfo->video_ram / 1024,
        rinfo->vram_ddr ? "DDR" : "SDRAM",
        rinfo->vram_width);
}
