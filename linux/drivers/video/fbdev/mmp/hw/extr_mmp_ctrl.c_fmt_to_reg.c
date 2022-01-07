
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmp_overlay {int dummy; } ;
 int dma_csc (int,int) ;
 int dma_fmt (int,int) ;
 int dma_palette (int ) ;
 int dma_swaprb (int,int) ;
 int dma_swapuv (int,int) ;
 int dma_swapyuv (int,int) ;
 int overlay_is_vid (struct mmp_overlay*) ;

__attribute__((used)) static u32 fmt_to_reg(struct mmp_overlay *overlay, int pix_fmt)
{
 u32 rbswap = 0, uvswap = 0, yuvswap = 0,
  csc_en = 0, val = 0,
  vid = overlay_is_vid(overlay);

 switch (pix_fmt) {
 case 138:
 case 139:
 case 137:
 case 136:
 case 135:
  rbswap = 1;
  break;
 case 133:
 case 128:
 case 129:
  uvswap = 1;
  break;
 case 130:
  yuvswap = 1;
  break;
 default:
  break;
 }

 switch (pix_fmt) {
 case 138:
 case 143:
  break;
 case 139:
 case 144:
  val = 0x1;
  break;
 case 137:
 case 142:
  val = 0x2;
  break;
 case 136:
 case 141:
  val = 0x3;
  break;
 case 135:
 case 140:
  val = 0x4;
  break;
 case 134:
 case 133:
 case 130:
  val = 0x5;
  csc_en = 1;
  break;
 case 131:
 case 128:
  val = 0x6;
  csc_en = 1;
  break;
 case 132:
 case 129:
  val = 0x7;
  csc_en = 1;
  break;
 default:
  break;
 }

 return (dma_palette(0) | dma_fmt(vid, val) |
  dma_swaprb(vid, rbswap) | dma_swapuv(vid, uvswap) |
  dma_swapyuv(vid, yuvswap) | dma_csc(vid, csc_en));
}
