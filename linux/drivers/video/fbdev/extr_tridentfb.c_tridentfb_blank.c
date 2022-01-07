
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {scalar_t__ flatpanel; } ;
struct fb_info {struct tridentfb_par* par; } ;







 int PowerStatus ;
 int debug (char*) ;
 int read3CE (struct tridentfb_par*,int ) ;
 int t_inb (struct tridentfb_par*,int) ;
 int t_outb (struct tridentfb_par*,unsigned char,int) ;
 int write3CE (struct tridentfb_par*,int ,unsigned char) ;

__attribute__((used)) static int tridentfb_blank(int blank_mode, struct fb_info *info)
{
 unsigned char PMCont, DPMSCont;
 struct tridentfb_par *par = info->par;

 debug("enter\n");
 if (par->flatpanel)
  return 0;
 t_outb(par, 0x04, 0x83C8);
 PMCont = t_inb(par, 0x83C6) & 0xFC;
 DPMSCont = read3CE(par, PowerStatus) & 0xFC;
 switch (blank_mode) {
 case 129:

 case 131:

  PMCont |= 0x03;
  DPMSCont |= 0x00;
  break;
 case 132:

  PMCont |= 0x02;
  DPMSCont |= 0x01;
  break;
 case 128:

  PMCont |= 0x02;
  DPMSCont |= 0x02;
  break;
 case 130:

  PMCont |= 0x00;
  DPMSCont |= 0x03;
  break;
 }

 write3CE(par, PowerStatus, DPMSCont);
 t_outb(par, 4, 0x83C8);
 t_outb(par, PMCont, 0x83C6);

 debug("exit\n");


 return (blank_mode == 131) ? 1 : 0;
}
