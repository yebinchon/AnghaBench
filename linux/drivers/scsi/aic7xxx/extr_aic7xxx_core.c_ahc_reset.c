
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahc_softc {int chip; int pause; int features; int (* bus_chip_init ) (struct ahc_softc*) ;} ;


 int AHC_AIC7770 ;
 int AHC_CHIPID_MASK ;
 int AHC_PCI ;
 int AHC_TWIN ;
 int AHC_WIDE ;
 int CHIPRST ;
 int CHIPRSTACK ;
 int HCNTRL ;
 int SBLKCTL ;
 int SELBUSB ;
 int SELWIDE ;
 int SXFRCTL1 ;
 int ahc_delay (int) ;
 int ahc_dumpseq (struct ahc_softc*) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_name (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int ahc_pause (struct ahc_softc*) ;
 int printk (char*,...) ;
 int stub1 (struct ahc_softc*) ;

int
ahc_reset(struct ahc_softc *ahc, int reinit)
{
 u_int sblkctl;
 u_int sxfrctl1_a, sxfrctl1_b;
 int error;
 int wait;






 ahc_pause(ahc);
 sxfrctl1_b = 0;
 if ((ahc->chip & AHC_CHIPID_MASK) == AHC_AIC7770) {
  u_int sblkctl;





  sblkctl = ahc_inb(ahc, SBLKCTL);
  ahc_outb(ahc, SBLKCTL, sblkctl | SELBUSB);
  sxfrctl1_b = ahc_inb(ahc, SXFRCTL1);
  ahc_outb(ahc, SBLKCTL, sblkctl & ~SELBUSB);
 }
 sxfrctl1_a = ahc_inb(ahc, SXFRCTL1);

 ahc_outb(ahc, HCNTRL, CHIPRST | ahc->pause);







 wait = 1000;
 do {
  ahc_delay(1000);
 } while (--wait && !(ahc_inb(ahc, HCNTRL) & CHIPRSTACK));

 if (wait == 0) {
  printk("%s: WARNING - Failed chip reset!  "
         "Trying to initialize anyway.\n", ahc_name(ahc));
 }
 ahc_outb(ahc, HCNTRL, ahc->pause);


 sblkctl = ahc_inb(ahc, SBLKCTL) & (SELBUSB|SELWIDE);

 if ((ahc->chip & AHC_PCI) != 0)
  sblkctl &= ~SELBUSB;
 switch (sblkctl) {
 case 0:

  break;
 case 2:

  ahc->features |= AHC_WIDE;
  break;
 case 8:

  ahc->features |= AHC_TWIN;
  break;
 default:
  printk(" Unsupported adapter type.  Ignoring\n");
  return(-1);
 }
 if ((ahc->features & AHC_TWIN) != 0) {
  u_int sblkctl;

  sblkctl = ahc_inb(ahc, SBLKCTL);
  ahc_outb(ahc, SBLKCTL, sblkctl | SELBUSB);
  ahc_outb(ahc, SXFRCTL1, sxfrctl1_b);
  ahc_outb(ahc, SBLKCTL, sblkctl & ~SELBUSB);
 }
 ahc_outb(ahc, SXFRCTL1, sxfrctl1_a);

 error = 0;
 if (reinit != 0)




  error = ahc->bus_chip_init(ahc);





 return (error);
}
