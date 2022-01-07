
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sh_mobile_lcdc_overlay {int base_addr_y; int dma_handle; int base_addr_c; int xres_virtual; int yres_virtual; int mode; int alpha; int rop3; int yres; int xres; int pos_y; int pos_x; int pitch; int index; TYPE_2__* channel; TYPE_1__* format; int enabled; } ;
struct TYPE_4__ {int lcdc; } ;
struct TYPE_3__ {int fourcc; } ;




 int LDBBLOCR_CHLC_SHIFT ;
 int LDBBLOCR_CVLC_SHIFT ;
 int LDBBSIFR_AL_1 ;
 int LDBBSIFR_AL_PK ;
 int LDBBSIFR_BRSEL ;
 int LDBBSIFR_CHRR_420 ;
 int LDBBSIFR_CHRR_422 ;
 int LDBBSIFR_CHRR_444 ;
 int LDBBSIFR_EN ;
 int LDBBSIFR_LAY_SHIFT ;
 int LDBBSIFR_ROP3_SHIFT ;
 int LDBBSIFR_RPKF_RGB16 ;
 int LDBBSIFR_RPKF_RGB24 ;
 int LDBBSIFR_RY ;
 int LDBBSIFR_SWPB ;
 int LDBBSIFR_SWPL ;
 int LDBBSIFR_SWPW ;
 int LDBBSMWR_BSMW_SHIFT ;
 int LDBBSSZR_BHSS_SHIFT ;
 int LDBBSSZR_BVSS_SHIFT ;
 int LDBCR ;
 int LDBCR_UPC (int ) ;
 int LDBCR_UPD (int ) ;
 int LDBCR_UPF (int ) ;
 int LDBnBLOCR (int ) ;
 int LDBnBSACR (int ) ;
 int LDBnBSAYR (int ) ;
 int LDBnBSIFR (int ) ;
 int LDBnBSMWR (int ) ;
 int LDBnBSSZR (int ) ;
 int LDDFR_PKF_ARGB32 ;
 int lcdc_write (int ,int ,int) ;
 int lcdc_write_overlay (struct sh_mobile_lcdc_overlay*,int ,int) ;

__attribute__((used)) static void sh_mobile_lcdc_overlay_setup(struct sh_mobile_lcdc_overlay *ovl)
{
 u32 format = 0;

 if (!ovl->enabled) {
  lcdc_write(ovl->channel->lcdc, LDBCR, LDBCR_UPC(ovl->index));
  lcdc_write_overlay(ovl, LDBnBSIFR(ovl->index), 0);
  lcdc_write(ovl->channel->lcdc, LDBCR,
      LDBCR_UPF(ovl->index) | LDBCR_UPD(ovl->index));
  return;
 }

 ovl->base_addr_y = ovl->dma_handle;
 ovl->base_addr_c = ovl->dma_handle
    + ovl->xres_virtual * ovl->yres_virtual;

 switch (ovl->mode) {
 case 138:
  format = LDBBSIFR_EN | (ovl->alpha << LDBBSIFR_LAY_SHIFT);
  break;

 case 137:
  format = LDBBSIFR_EN | LDBBSIFR_BRSEL
         | (ovl->rop3 << LDBBSIFR_ROP3_SHIFT);
  break;
 }

 switch (ovl->format->fourcc) {
 case 128:
 case 132:
 case 129:
 case 130:
  format |= LDBBSIFR_SWPL | LDBBSIFR_SWPW;
  break;
 case 136:
 case 134:
 case 133:
 case 131:
  format |= LDBBSIFR_SWPL | LDBBSIFR_SWPW | LDBBSIFR_SWPB;
  break;
 case 135:
 default:
  format |= LDBBSIFR_SWPL;
  break;
 }

 switch (ovl->format->fourcc) {
 case 128:
  format |= LDBBSIFR_AL_1 | LDBBSIFR_RY | LDBBSIFR_RPKF_RGB16;
  break;
 case 136:
  format |= LDBBSIFR_AL_1 | LDBBSIFR_RY | LDBBSIFR_RPKF_RGB24;
  break;
 case 135:
  format |= LDBBSIFR_AL_PK | LDBBSIFR_RY | LDDFR_PKF_ARGB32;
  break;
 case 134:
 case 132:
  format |= LDBBSIFR_AL_1 | LDBBSIFR_CHRR_420;
  break;
 case 133:
 case 129:
  format |= LDBBSIFR_AL_1 | LDBBSIFR_CHRR_422;
  break;
 case 131:
 case 130:
  format |= LDBBSIFR_AL_1 | LDBBSIFR_CHRR_444;
  break;
 }

 lcdc_write(ovl->channel->lcdc, LDBCR, LDBCR_UPC(ovl->index));

 lcdc_write_overlay(ovl, LDBnBSIFR(ovl->index), format);

 lcdc_write_overlay(ovl, LDBnBSSZR(ovl->index),
  (ovl->yres << LDBBSSZR_BVSS_SHIFT) |
  (ovl->xres << LDBBSSZR_BHSS_SHIFT));
 lcdc_write_overlay(ovl, LDBnBLOCR(ovl->index),
  (ovl->pos_y << LDBBLOCR_CVLC_SHIFT) |
  (ovl->pos_x << LDBBLOCR_CHLC_SHIFT));
 lcdc_write_overlay(ovl, LDBnBSMWR(ovl->index),
  ovl->pitch << LDBBSMWR_BSMW_SHIFT);

 lcdc_write_overlay(ovl, LDBnBSAYR(ovl->index), ovl->base_addr_y);
 lcdc_write_overlay(ovl, LDBnBSACR(ovl->index), ovl->base_addr_c);

 lcdc_write(ovl->channel->lcdc, LDBCR,
     LDBCR_UPF(ovl->index) | LDBCR_UPD(ovl->index));
}
