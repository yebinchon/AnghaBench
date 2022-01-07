
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pitch; int bpp; int depth; } ;
struct aty128fb_par {TYPE_1__ crtc; } ;


 int DEFAULT_OFFSET ;
 int DEFAULT_PITCH ;
 int DEFAULT_SC_BOTTOM_RIGHT ;
 int DP_BRUSH_BKGD_CLR ;
 int DP_BRUSH_FRGD_CLR ;
 int DP_GUI_MASTER_CNTL ;
 int DP_SRC_BKGD_CLR ;
 int DP_SRC_FRGD_CLR ;
 int DP_WRITE_MASK ;
 int DST_BRES_DEC ;
 int DST_BRES_ERR ;
 int DST_BRES_INC ;
 int GMC_3D_FCN_EN_CLR ;
 int GMC_AUX_CLIP_CLEAR ;
 int GMC_BRUSH_SOLIDCOLOR ;
 int GMC_BYTE_ORDER_MSB_TO_LSB ;
 int GMC_DP_CONVERSION_TEMP_6500 ;
 int GMC_DP_SRC_RECT ;
 int GMC_DST_CLIP_DEFAULT ;
 int GMC_DST_CLR_CMP_FCN_CLEAR ;
 int GMC_DST_PITCH_OFFSET_DEFAULT ;
 int GMC_SRC_CLIP_DEFAULT ;
 int GMC_SRC_DSTCOLOR ;
 int GMC_SRC_PITCH_OFFSET_DEFAULT ;
 int GMC_WRITE_MASK_SET ;
 int ROP3_PATCOPY ;
 int SCALE_3D_CNTL ;
 int aty128_reset_engine (struct aty128fb_par*) ;
 int aty_st_le32 (int ,int) ;
 int depth_to_dst (int ) ;
 int wait_for_fifo (int,struct aty128fb_par*) ;
 int wait_for_idle (struct aty128fb_par*) ;

__attribute__((used)) static void aty128_init_engine(struct aty128fb_par *par)
{
 u32 pitch_value;

 wait_for_idle(par);


 wait_for_fifo(1, par);
 aty_st_le32(SCALE_3D_CNTL, 0x00000000);

 aty128_reset_engine(par);

 pitch_value = par->crtc.pitch;
 if (par->crtc.bpp == 24) {
  pitch_value = pitch_value * 3;
 }

 wait_for_fifo(4, par);

 aty_st_le32(DEFAULT_OFFSET, 0x00000000);


 aty_st_le32(DEFAULT_PITCH, pitch_value);


 aty_st_le32(DEFAULT_SC_BOTTOM_RIGHT, (0x1FFF << 16) | 0x1FFF);


 aty_st_le32(DP_GUI_MASTER_CNTL,
      GMC_SRC_PITCH_OFFSET_DEFAULT |
      GMC_DST_PITCH_OFFSET_DEFAULT |
      GMC_SRC_CLIP_DEFAULT |
      GMC_DST_CLIP_DEFAULT |
      GMC_BRUSH_SOLIDCOLOR |
      (depth_to_dst(par->crtc.depth) << 8) |
      GMC_SRC_DSTCOLOR |
      GMC_BYTE_ORDER_MSB_TO_LSB |
      GMC_DP_CONVERSION_TEMP_6500 |
      ROP3_PATCOPY |
      GMC_DP_SRC_RECT |
      GMC_3D_FCN_EN_CLR |
      GMC_DST_CLR_CMP_FCN_CLEAR |
      GMC_AUX_CLIP_CLEAR |
      GMC_WRITE_MASK_SET);

 wait_for_fifo(8, par);

 aty_st_le32(DST_BRES_ERR, 0);
 aty_st_le32(DST_BRES_INC, 0);
 aty_st_le32(DST_BRES_DEC, 0);


 aty_st_le32(DP_BRUSH_FRGD_CLR, 0xFFFFFFFF);
 aty_st_le32(DP_BRUSH_BKGD_CLR, 0x00000000);


 aty_st_le32(DP_SRC_FRGD_CLR, 0xFFFFFFFF);
 aty_st_le32(DP_SRC_BKGD_CLR, 0x00000000);


 aty_st_le32(DP_WRITE_MASK, 0xFFFFFFFF);


 wait_for_idle(par);
}
