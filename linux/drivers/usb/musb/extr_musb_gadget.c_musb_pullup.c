
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct musb {int mregs; } ;


 int MUSB_POWER ;
 int MUSB_POWER_SOFTCONN ;
 int musb_dbg (struct musb*,char*,char*) ;
 int musb_readb (int ,int ) ;
 int musb_writeb (int ,int ,int ) ;

__attribute__((used)) static void musb_pullup(struct musb *musb, int is_on)
{
 u8 power;

 power = musb_readb(musb->mregs, MUSB_POWER);
 if (is_on)
  power |= MUSB_POWER_SOFTCONN;
 else
  power &= ~MUSB_POWER_SOFTCONN;



 musb_dbg(musb, "gadget D+ pullup %s",
  is_on ? "on" : "off");
 musb_writeb(musb->mregs, MUSB_POWER, power);
}
