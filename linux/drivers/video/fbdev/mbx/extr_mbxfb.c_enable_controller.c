
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fb_info {int dummy; } ;


 int FMsk (int ) ;
 int HSCOEFF0 ;
 int HSCOEFF1 ;
 int HSCOEFF2 ;
 int HSCOEFF3 ;
 int HSCOEFF4 ;
 int HSCOEFF5 ;
 int HSCOEFF6 ;
 int HSCOEFF7 ;
 int HSCOEFF8 ;
 int SHCTRL ;
 int SHCTRL_HINITIAL ;
 int SPOCTRL ;
 int SPOCTRL_H_SC_BP ;
 int SPOCTRL_VORDER_4TAP ;
 int SPOCTRL_V_SC_BP ;
 int SVCTRL ;
 int SYSCFG ;
 int SYSRST ;
 int SYSRST_RST ;
 int Shctrl_Hinitial (int) ;
 int Svctrl_Initial1 (int) ;
 int Svctrl_Initial2 (int) ;
 int VSCOEFF0 ;
 int VSCOEFF1 ;
 int VSCOEFF2 ;
 int VSCOEFF3 ;
 int VSCOEFF4 ;
 int enable_clocks (struct fb_info*) ;
 int readl (int ) ;
 int setup_display (struct fb_info*) ;
 int setup_graphics (struct fb_info*) ;
 int setup_memc (struct fb_info*) ;
 int write_reg (int,int ) ;
 int write_reg_dly (int,int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void enable_controller(struct fb_info *fbi)
{
 u32 svctrl, shctrl;

 write_reg_dly(SYSRST_RST, SYSRST);


 write_reg_dly(0xffffff0c, SYSCFG);

 enable_clocks(fbi);
 setup_memc(fbi);
 setup_graphics(fbi);
 setup_display(fbi);

 shctrl = readl(SHCTRL);
 shctrl &= ~(FMsk(SHCTRL_HINITIAL));
 shctrl |= Shctrl_Hinitial(4<<11);
 writel(shctrl, SHCTRL);

 svctrl = Svctrl_Initial1(1<<10) | Svctrl_Initial2(1<<10);
 writel(svctrl, SVCTRL);

 writel(SPOCTRL_H_SC_BP | SPOCTRL_V_SC_BP | SPOCTRL_VORDER_4TAP
   , SPOCTRL);



 write_reg(0xff000100, VSCOEFF0);
 write_reg(0xfdfcfdfe, VSCOEFF1);
 write_reg(0x170d0500, VSCOEFF2);
 write_reg(0x3d372d22, VSCOEFF3);
 write_reg(0x00000040, VSCOEFF4);

 write_reg(0xff010100, HSCOEFF0);
 write_reg(0x00000000, HSCOEFF1);
 write_reg(0x02010000, HSCOEFF2);
 write_reg(0x01020302, HSCOEFF3);
 write_reg(0xf9fbfe00, HSCOEFF4);
 write_reg(0xfbf7f6f7, HSCOEFF5);
 write_reg(0x1c110700, HSCOEFF6);
 write_reg(0x3e393127, HSCOEFF7);
 write_reg(0x00000040, HSCOEFF8);

}
