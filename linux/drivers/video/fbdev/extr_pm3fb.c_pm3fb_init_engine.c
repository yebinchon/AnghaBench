
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pm3_par {int dummy; } ;
struct TYPE_5__ {int xres_virtual; int bits_per_pixel; } ;
struct TYPE_4__ {unsigned long line_length; } ;
struct fb_info {unsigned long screen_size; TYPE_3__* current_par; TYPE_2__ var; TYPE_1__ fix; struct pm3_par* par; } ;
struct TYPE_6__ {int depth; } ;


 int DPRINTK (int,char*,int) ;
 int PM3AlphaBlendAlphaMode ;
 int PM3AlphaBlendColorMode ;
 int PM3AlphaTestMode ;
 int PM3AntialiasMode ;
 int PM3AreaStippleMode ;
 int PM3BitMaskPattern ;
 int PM3ChromaTestMode ;
 int PM3ColorDDAMode ;
 int PM3Config2D ;
 int PM3Count ;
 int PM3DeltaControl ;
 int PM3DeltaMode ;
 int PM3DepthMode ;
 int PM3DitherMode ;
 int PM3FBDestReadBufferAddr0 ;
 int PM3FBDestReadBufferOffset0 ;
 int PM3FBDestReadBufferWidth0 ;
 int PM3FBDestReadBufferWidth_Width (int const) ;
 int PM3FBDestReadEnables ;
 int PM3FBDestReadEnables_E (int) ;
 int PM3FBDestReadEnables_R (int) ;
 int PM3FBDestReadEnables_ReferenceAlpha (int) ;
 int PM3FBDestReadMode ;
 int PM3FBDestReadMode_Enable0 ;
 int PM3FBDestReadMode_ReadEnable ;
 int PM3FBHardwareWriteMask ;
 int PM3FBSoftwareWriteMask ;
 int PM3FBSourceReadBufferAddr ;
 int PM3FBSourceReadBufferOffset ;
 int PM3FBSourceReadBufferWidth ;
 int PM3FBSourceReadBufferWidth_Width (int const) ;
 int PM3FBSourceReadMode ;
 int PM3FBSourceReadMode_Blocking ;
 int PM3FBSourceReadMode_ReadEnable ;
 int PM3FBWriteBufferAddr0 ;
 int PM3FBWriteBufferOffset0 ;
 int PM3FBWriteBufferWidth0 ;
 int PM3FBWriteBufferWidth_Width (int const) ;
 int PM3FBWriteMode ;
 int PM3FBWriteMode_Enable0 ;
 int PM3FBWriteMode_OpaqueSpan ;
 int PM3FBWriteMode_WriteEnable ;
 int PM3FilterMode ;
 int PM3FilterModeSync ;
 int PM3FogMode ;
 int PM3GIDMode ;
 int PM3LBDestReadEnables ;
 int PM3LBDestReadMode ;
 int PM3LBSourceReadMode ;
 int PM3LBWriteMode ;
 int PM3LUTMode ;
 int PM3LineStippleMode ;
 int PM3LogicalOpMode ;
 int PM3PixelSize ;
 int PM3PixelSize_GLOBAL_16BIT ;
 int PM3PixelSize_GLOBAL_32BIT ;
 int PM3PixelSize_GLOBAL_8BIT ;
 int PM3RasterizerMode ;
 int PM3RouterMode ;
 int PM3ScissorMode ;
 int PM3SizeOfFramebuffer ;
 int PM3SpanColorMask ;
 int PM3StartXDom ;
 int PM3StartXSub ;
 int PM3StartY ;
 int PM3StatisticMode ;
 int PM3StencilData ;
 int PM3StencilMode ;
 int PM3TextureApplicationMode ;
 int PM3TextureCompositeAlphaMode0 ;
 int PM3TextureCompositeAlphaMode1 ;
 int PM3TextureCompositeColorMode0 ;
 int PM3TextureCompositeColorMode1 ;
 int PM3TextureCompositeMode ;
 int PM3TextureCoordMode ;
 int PM3TextureFilterMode ;
 int PM3TextureIndexMode0 ;
 int PM3TextureIndexMode1 ;
 int PM3TextureReadMode ;
 int PM3Window ;
 int PM3XBias ;
 int PM3YBias ;
 int PM3YUVMode ;
 int PM3_WAIT (struct pm3_par*,int) ;
 int PM3_WRITE_REG (struct pm3_par*,int ,int) ;
 int PM3dXDom ;
 int PM3dXSub ;
 int PM3dY ;
 int pm3fb_sync (struct fb_info*) ;

__attribute__((used)) static void pm3fb_init_engine(struct fb_info *info)
{
 struct pm3_par *par = info->par;
 const u32 width = (info->var.xres_virtual + 7) & ~7;

 PM3_WAIT(par, 50);
 PM3_WRITE_REG(par, PM3FilterMode, PM3FilterModeSync);
 PM3_WRITE_REG(par, PM3StatisticMode, 0x0);
 PM3_WRITE_REG(par, PM3DeltaMode, 0x0);
 PM3_WRITE_REG(par, PM3RasterizerMode, 0x0);
 PM3_WRITE_REG(par, PM3ScissorMode, 0x0);
 PM3_WRITE_REG(par, PM3LineStippleMode, 0x0);
 PM3_WRITE_REG(par, PM3AreaStippleMode, 0x0);
 PM3_WRITE_REG(par, PM3GIDMode, 0x0);
 PM3_WRITE_REG(par, PM3DepthMode, 0x0);
 PM3_WRITE_REG(par, PM3StencilMode, 0x0);
 PM3_WRITE_REG(par, PM3StencilData, 0x0);
 PM3_WRITE_REG(par, PM3ColorDDAMode, 0x0);
 PM3_WRITE_REG(par, PM3TextureCoordMode, 0x0);
 PM3_WRITE_REG(par, PM3TextureIndexMode0, 0x0);
 PM3_WRITE_REG(par, PM3TextureIndexMode1, 0x0);
 PM3_WRITE_REG(par, PM3TextureReadMode, 0x0);
 PM3_WRITE_REG(par, PM3LUTMode, 0x0);
 PM3_WRITE_REG(par, PM3TextureFilterMode, 0x0);
 PM3_WRITE_REG(par, PM3TextureCompositeMode, 0x0);
 PM3_WRITE_REG(par, PM3TextureApplicationMode, 0x0);
 PM3_WRITE_REG(par, PM3TextureCompositeColorMode1, 0x0);
 PM3_WRITE_REG(par, PM3TextureCompositeAlphaMode1, 0x0);
 PM3_WRITE_REG(par, PM3TextureCompositeColorMode0, 0x0);
 PM3_WRITE_REG(par, PM3TextureCompositeAlphaMode0, 0x0);
 PM3_WRITE_REG(par, PM3FogMode, 0x0);
 PM3_WRITE_REG(par, PM3ChromaTestMode, 0x0);
 PM3_WRITE_REG(par, PM3AlphaTestMode, 0x0);
 PM3_WRITE_REG(par, PM3AntialiasMode, 0x0);
 PM3_WRITE_REG(par, PM3YUVMode, 0x0);
 PM3_WRITE_REG(par, PM3AlphaBlendColorMode, 0x0);
 PM3_WRITE_REG(par, PM3AlphaBlendAlphaMode, 0x0);
 PM3_WRITE_REG(par, PM3DitherMode, 0x0);
 PM3_WRITE_REG(par, PM3LogicalOpMode, 0x0);
 PM3_WRITE_REG(par, PM3RouterMode, 0x0);
 PM3_WRITE_REG(par, PM3Window, 0x0);

 PM3_WRITE_REG(par, PM3Config2D, 0x0);

 PM3_WRITE_REG(par, PM3SpanColorMask, 0xffffffff);

 PM3_WRITE_REG(par, PM3XBias, 0x0);
 PM3_WRITE_REG(par, PM3YBias, 0x0);
 PM3_WRITE_REG(par, PM3DeltaControl, 0x0);

 PM3_WRITE_REG(par, PM3BitMaskPattern, 0xffffffff);

 PM3_WRITE_REG(par, PM3FBDestReadEnables,
      PM3FBDestReadEnables_E(0xff) |
      PM3FBDestReadEnables_R(0xff) |
      PM3FBDestReadEnables_ReferenceAlpha(0xff));
 PM3_WRITE_REG(par, PM3FBDestReadBufferAddr0, 0x0);
 PM3_WRITE_REG(par, PM3FBDestReadBufferOffset0, 0x0);
 PM3_WRITE_REG(par, PM3FBDestReadBufferWidth0,
      PM3FBDestReadBufferWidth_Width(width));

 PM3_WRITE_REG(par, PM3FBDestReadMode,
      PM3FBDestReadMode_ReadEnable |
      PM3FBDestReadMode_Enable0);
 PM3_WRITE_REG(par, PM3FBSourceReadBufferAddr, 0x0);
 PM3_WRITE_REG(par, PM3FBSourceReadBufferOffset, 0x0);
 PM3_WRITE_REG(par, PM3FBSourceReadBufferWidth,
      PM3FBSourceReadBufferWidth_Width(width));
 PM3_WRITE_REG(par, PM3FBSourceReadMode,
      PM3FBSourceReadMode_Blocking |
      PM3FBSourceReadMode_ReadEnable);

 PM3_WAIT(par, 2);
 {

  unsigned long rm = 1 | (3 << 7);
  switch (info->var.bits_per_pixel) {
  case 8:
   PM3_WRITE_REG(par, PM3PixelSize,
        PM3PixelSize_GLOBAL_8BIT);



   break;
  case 16:
   PM3_WRITE_REG(par, PM3PixelSize,
        PM3PixelSize_GLOBAL_16BIT);



   break;
  case 32:
   PM3_WRITE_REG(par, PM3PixelSize,
        PM3PixelSize_GLOBAL_32BIT);
   break;
  default:
   DPRINTK(1, "Unsupported depth %d\n",
    info->var.bits_per_pixel);
   break;
  }
  PM3_WRITE_REG(par, PM3RasterizerMode, rm);
 }

 PM3_WAIT(par, 20);
 PM3_WRITE_REG(par, PM3FBSoftwareWriteMask, 0xffffffff);
 PM3_WRITE_REG(par, PM3FBHardwareWriteMask, 0xffffffff);
 PM3_WRITE_REG(par, PM3FBWriteMode,
      PM3FBWriteMode_WriteEnable |
      PM3FBWriteMode_OpaqueSpan |
      PM3FBWriteMode_Enable0);
 PM3_WRITE_REG(par, PM3FBWriteBufferAddr0, 0x0);
 PM3_WRITE_REG(par, PM3FBWriteBufferOffset0, 0x0);
 PM3_WRITE_REG(par, PM3FBWriteBufferWidth0,
      PM3FBWriteBufferWidth_Width(width));

 PM3_WRITE_REG(par, PM3SizeOfFramebuffer, 0x0);
 {

  unsigned long sofb = info->screen_size /
   info->fix.line_length;
  if (sofb > 4095)
   PM3_WRITE_REG(par, PM3SizeOfFramebuffer, 4095);
  else
   PM3_WRITE_REG(par, PM3SizeOfFramebuffer, sofb);

  switch (info->var.bits_per_pixel) {
  case 8:
   PM3_WRITE_REG(par, PM3DitherMode,
        (1 << 10) | (2 << 3));
   break;
  case 16:
   PM3_WRITE_REG(par, PM3DitherMode,
        (1 << 10) | (1 << 3));
   break;
  case 32:
   PM3_WRITE_REG(par, PM3DitherMode,
        (1 << 10) | (0 << 3));
   break;
  default:
   DPRINTK(1, "Unsupported depth %d\n",
    info->current_par->depth);
   break;
  }
 }

 PM3_WRITE_REG(par, PM3dXDom, 0x0);
 PM3_WRITE_REG(par, PM3dXSub, 0x0);
 PM3_WRITE_REG(par, PM3dY, 1 << 16);
 PM3_WRITE_REG(par, PM3StartXDom, 0x0);
 PM3_WRITE_REG(par, PM3StartXSub, 0x0);
 PM3_WRITE_REG(par, PM3StartY, 0x0);
 PM3_WRITE_REG(par, PM3Count, 0x0);


 PM3_WRITE_REG(par, PM3LBDestReadMode, 0x0);
 PM3_WRITE_REG(par, PM3LBDestReadEnables, 0x0);
 PM3_WRITE_REG(par, PM3LBSourceReadMode, 0x0);
 PM3_WRITE_REG(par, PM3LBWriteMode, 0x0);

 pm3fb_sync(info);
}
