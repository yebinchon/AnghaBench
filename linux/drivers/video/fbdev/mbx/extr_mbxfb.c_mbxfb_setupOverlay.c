
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mbxfb_overlaySetup {int scaled_width; int scaled_height; int width; int height; int fmt; int Y_stride; int UV_stride; int U_offset; int V_offset; int mem_offset; scalar_t__ enable; int y; int x; } ;


 int EINVAL ;
 int FMsk (int ) ;






 int SHCTRL ;
 int SHCTRL_HDECIM ;
 int SHCTRL_HPITCH ;
 int SPOCTRL ;
 int SPOCTRL_HV_SC_OR ;
 int SPOCTRL_H_SC_BP ;
 int SPOCTRL_VPITCH ;
 int SPOCTRL_VS_UR_C ;
 int SPOCTRL_V_SC_BP ;
 int SSSIZE ;
 int SSSIZE_SC_HEIGHT ;
 int SSSIZE_SC_WIDTH ;
 int Shctrl_Hpitch (int) ;
 int Spoctrl_Vpitch (int) ;
 int Sssize_Sc_Height (int) ;
 int Sssize_Sc_Width (int) ;
 int VOVRCLK ;
 int VSADR ;
 int VSCADR ;
 int VSCADR_STR_EN ;
 int VSCADR_VBASE_ADR ;
 int VSCTRL ;
 int VSCTRL_COSITED ;
 int VSCTRL_CSC_EN ;
 int VSCTRL_GAMMA_EN ;
 int VSCTRL_VPIXFMT ;
 int VSCTRL_VPIXFMT_UY0VY1 ;
 int VSCTRL_VPIXFMT_VY0UY1 ;
 int VSCTRL_VPIXFMT_Y0UY1V ;
 int VSCTRL_VPIXFMT_Y0VY1U ;
 int VSCTRL_VPIXFMT_YUV12 ;
 int VSCTRL_VSHEIGHT ;
 int VSCTRL_VSWIDTH ;
 int VUBASE ;
 int VUBASE_UBASE_ADR ;
 int VUBASE_UVHALFSTR ;
 int VVBASE ;
 int VVBASE_VBASE_ADR ;
 int Vsadr_Srcstride (int) ;
 int Vsadr_Xstart (int ) ;
 int Vsadr_Ystart (int ) ;
 int Vscadr_Vbase_Adr (int) ;
 int Vsctrl_Height (int) ;
 int Vsctrl_Width (int) ;
 int Vubase_Ubase_Adr (int) ;
 int Vvbase_Vbase_Adr (int) ;
 int readl (int ) ;
 int write_reg (int,int ) ;

__attribute__((used)) static int mbxfb_setupOverlay(struct mbxfb_overlaySetup *set)
{
 u32 vsctrl, vscadr, vsadr;
 u32 sssize, spoctrl, shctrl;
 u32 vubase, vvbase;
 u32 vovrclk;

 if (set->scaled_width==0 || set->scaled_height==0)
  return -EINVAL;



 vovrclk = readl(VOVRCLK);
 vsctrl = readl(VSCTRL);
 vscadr = readl(VSCADR);
 vubase = readl(VUBASE);
 vvbase = readl(VVBASE);
 shctrl = readl(SHCTRL);

 spoctrl = readl(SPOCTRL);
 sssize = readl(SSSIZE);

 vsctrl &= ~( FMsk(VSCTRL_VSWIDTH) |
     FMsk(VSCTRL_VSHEIGHT) |
     FMsk(VSCTRL_VPIXFMT) |
     VSCTRL_GAMMA_EN | VSCTRL_CSC_EN |
     VSCTRL_COSITED );
 vsctrl |= Vsctrl_Width(set->width) | Vsctrl_Height(set->height) |
    VSCTRL_CSC_EN;

 vscadr &= ~(VSCADR_STR_EN | FMsk(VSCADR_VBASE_ADR) );
 vubase &= ~(VUBASE_UVHALFSTR | FMsk(VUBASE_UBASE_ADR));
 vvbase &= ~(FMsk(VVBASE_VBASE_ADR));

 switch (set->fmt) {
 case 128:
  vsctrl |= VSCTRL_VPIXFMT_YUV12;

  set->Y_stride = ((set->width) + 0xf ) & ~0xf;
  break;
 case 129:
  vsctrl |= VSCTRL_VPIXFMT_YUV12;

  set->Y_stride = ((set->width) + 0xf ) & ~0xf;
  vubase |= VUBASE_UVHALFSTR;

  break;
 case 133:
  vsctrl |= VSCTRL_VPIXFMT_UY0VY1;
  set->Y_stride = (set->width*2 + 0xf ) & ~0xf;
  break;
 case 132:
  vsctrl |= VSCTRL_VPIXFMT_VY0UY1;
  set->Y_stride = (set->width*2 + 0xf ) & ~0xf;
  break;
 case 131:
  vsctrl |= VSCTRL_VPIXFMT_Y0UY1V;
  set->Y_stride = (set->width*2 + 0xf ) & ~0xf;
  break;
 case 130:
  vsctrl |= VSCTRL_VPIXFMT_Y0VY1U;
  set->Y_stride = (set->width*2 + 0xf ) & ~0xf;
   break;
 default:
  return -EINVAL;
 }
 set->UV_stride = ((set->width/2) + 0x7 ) & ~0x7;
  set->U_offset = set->height * set->Y_stride;
  set->V_offset = set->U_offset +
      set->height * set->UV_stride;
 vubase |= Vubase_Ubase_Adr(
   (0x60000 + set->mem_offset + set->U_offset)>>3);
 vvbase |= Vvbase_Vbase_Adr(
   (0x60000 + set->mem_offset + set->V_offset)>>3);


 vscadr |= Vscadr_Vbase_Adr((0x60000 + set->mem_offset)>>4);

 if (set->enable)
  vscadr |= VSCADR_STR_EN;


 vsadr = Vsadr_Srcstride((set->Y_stride)/16-1) |
  Vsadr_Xstart(set->x) | Vsadr_Ystart(set->y);

 sssize &= ~(FMsk(SSSIZE_SC_WIDTH) | FMsk(SSSIZE_SC_HEIGHT));
 sssize = Sssize_Sc_Width(set->scaled_width-1) |
   Sssize_Sc_Height(set->scaled_height-1);

 spoctrl &= ~(SPOCTRL_H_SC_BP | SPOCTRL_V_SC_BP |
   SPOCTRL_HV_SC_OR | SPOCTRL_VS_UR_C |
   FMsk(SPOCTRL_VPITCH));
 spoctrl |= Spoctrl_Vpitch((set->height<<11)/set->scaled_height);


 if (set->scaled_width == set->width)
  spoctrl |= SPOCTRL_H_SC_BP;
 if (set->scaled_height == set->height)
  spoctrl |= SPOCTRL_V_SC_BP;

 shctrl &= ~(FMsk(SHCTRL_HPITCH) | SHCTRL_HDECIM);
 shctrl |= Shctrl_Hpitch((set->width<<11)/set->scaled_width);


 write_reg(vsctrl, VSCTRL);
 write_reg(vscadr, VSCADR);
 write_reg(vubase, VUBASE);
 write_reg(vvbase, VVBASE);
 write_reg(vsadr, VSADR);


 write_reg(sssize, SSSIZE);
 write_reg(spoctrl, SPOCTRL);
 write_reg(shctrl, SHCTRL);


 if (set->enable)
  vovrclk |= 1;
 else
  vovrclk &= ~1;

 write_reg(vovrclk, VOVRCLK);

 return 0;
}
