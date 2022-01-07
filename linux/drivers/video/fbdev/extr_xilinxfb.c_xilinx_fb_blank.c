
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinxfb_drvdata {int reg_ctrl_default; } ;
struct fb_info {int dummy; } ;







 int REG_CTRL ;
 struct xilinxfb_drvdata* to_xilinxfb_drvdata (struct fb_info*) ;
 int xilinx_fb_out32 (struct xilinxfb_drvdata*,int ,int ) ;

__attribute__((used)) static int
xilinx_fb_blank(int blank_mode, struct fb_info *fbi)
{
 struct xilinxfb_drvdata *drvdata = to_xilinxfb_drvdata(fbi);

 switch (blank_mode) {
 case 129:

  xilinx_fb_out32(drvdata, REG_CTRL, drvdata->reg_ctrl_default);
  break;

 case 131:
 case 128:
 case 132:
 case 130:

  xilinx_fb_out32(drvdata, REG_CTRL, 0);
 default:
  break;
 }
 return 0;
}
