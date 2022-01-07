
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asm9260_wdt_priv {scalar_t__ iobase; int wdd; } ;


 int BM_MOD_WDEN ;
 int BM_MOD_WDRESET ;
 scalar_t__ HW_WDFEED ;
 scalar_t__ HW_WDMOD ;
 scalar_t__ HW_WDTC ;
 int asm9260_wdt_feed (int *) ;
 int iowrite32 (int,scalar_t__) ;
 int mdelay (int) ;

__attribute__((used)) static void asm9260_wdt_sys_reset(struct asm9260_wdt_priv *priv)
{


 iowrite32(BM_MOD_WDEN | BM_MOD_WDRESET, priv->iobase + HW_WDMOD);

 iowrite32(0xff, priv->iobase + HW_WDTC);

 asm9260_wdt_feed(&priv->wdd);




 iowrite32(0xff, priv->iobase + HW_WDFEED);

 mdelay(1000);
}
