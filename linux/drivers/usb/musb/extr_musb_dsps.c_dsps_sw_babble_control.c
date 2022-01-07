
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct musb {int controller; int mregs; } ;


 int MUSB_BABBLE_CTL ;
 int MUSB_BABBLE_FORCE_TXIDLE ;
 int MUSB_BABBLE_STUCK_J ;
 int dev_dbg (int ,char*,...) ;
 int musb_readb (int ,int ) ;
 int musb_writeb (int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static bool dsps_sw_babble_control(struct musb *musb)
{
 u8 babble_ctl;
 bool session_restart = 0;

 babble_ctl = musb_readb(musb->mregs, MUSB_BABBLE_CTL);
 dev_dbg(musb->controller, "babble: MUSB_BABBLE_CTL value %x\n",
  babble_ctl);




 dev_dbg(musb->controller, "STUCK_J is %s\n",
  babble_ctl & MUSB_BABBLE_STUCK_J ? "set" : "reset");

 if (babble_ctl & MUSB_BABBLE_STUCK_J) {
  int timeout = 10;





  babble_ctl = musb_readb(musb->mregs, MUSB_BABBLE_CTL);
  babble_ctl |= MUSB_BABBLE_FORCE_TXIDLE;
  musb_writeb(musb->mregs, MUSB_BABBLE_CTL, babble_ctl);


  dev_dbg(musb->controller, "Set TXIDLE, wait J to clear\n");
  do {
   babble_ctl = musb_readb(musb->mregs, MUSB_BABBLE_CTL);
   udelay(1);
  } while ((babble_ctl & MUSB_BABBLE_STUCK_J) && timeout--);


  if (babble_ctl & MUSB_BABBLE_STUCK_J) {





   dev_dbg(musb->controller, "J not cleared, misc (%x)\n",
    babble_ctl);
   session_restart = 1;
  }
 } else {
  session_restart = 1;
 }

 return session_restart;
}
