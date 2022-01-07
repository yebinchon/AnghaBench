
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int features; int flags; } ;


 int AHC_LARGE_SCBS ;
 int AHC_SCB_BTT ;
 int BRKADRINT ;
 int CLRBRKADRINT ;
 int CLRINT ;
 int CLRPARERR ;
 int ERROR ;
 int FAILDIS ;
 int FALSE ;
 int INTSTAT ;
 int MPARERR ;
 int PERRORDIS ;
 int SEQCTL ;
 int TRUE ;
 scalar_t__ ahc_ext_scbram_present (struct ahc_softc*) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_name (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int ahc_probe_scbs (struct ahc_softc*) ;
 int ahc_scbram_config (struct ahc_softc*,int,int,int,int) ;
 scalar_t__ bootverbose ;
 int printk (char*,int ,char*,char*,int) ;

__attribute__((used)) static void
ahc_probe_ext_scbram(struct ahc_softc *ahc)
{
 int num_scbs;
 int test_num_scbs;
 int enable;
 int pcheck;
 int fast;
 int large;

 enable = FALSE;
 pcheck = FALSE;
 fast = FALSE;
 large = FALSE;
 num_scbs = 0;

 if (ahc_ext_scbram_present(ahc) == 0)
  goto done;




 ahc_scbram_config(ahc, TRUE, pcheck, fast, large);
 num_scbs = ahc_probe_scbs(ahc);
 if (num_scbs == 0) {

  goto done;
 }
 enable = TRUE;






 ahc_outb(ahc, SEQCTL, 0);
 ahc_outb(ahc, CLRINT, CLRPARERR);
 ahc_outb(ahc, CLRINT, CLRBRKADRINT);


 ahc_scbram_config(ahc, enable, TRUE, fast, large);
 num_scbs = ahc_probe_scbs(ahc);
 if ((ahc_inb(ahc, INTSTAT) & BRKADRINT) == 0
  || (ahc_inb(ahc, ERROR) & MPARERR) == 0)
  pcheck = TRUE;


 ahc_outb(ahc, CLRINT, CLRPARERR);
 ahc_outb(ahc, CLRINT, CLRBRKADRINT);


 ahc_scbram_config(ahc, enable, pcheck, TRUE, large);
 test_num_scbs = ahc_probe_scbs(ahc);
 if (test_num_scbs == num_scbs
  && ((ahc_inb(ahc, INTSTAT) & BRKADRINT) == 0
   || (ahc_inb(ahc, ERROR) & MPARERR) == 0))
  fast = TRUE;





 if ((ahc->features & AHC_LARGE_SCBS) != 0) {
  ahc_scbram_config(ahc, enable, pcheck, fast, TRUE);
  test_num_scbs = ahc_probe_scbs(ahc);
  if (test_num_scbs >= num_scbs) {
   large = TRUE;
   num_scbs = test_num_scbs;
    if (num_scbs >= 64) {






    ahc->flags |= AHC_SCB_BTT;
   }
  }
 }
done:




 ahc_outb(ahc, SEQCTL, PERRORDIS|FAILDIS);

 ahc_outb(ahc, CLRINT, CLRPARERR);
 ahc_outb(ahc, CLRINT, CLRBRKADRINT);
 if (bootverbose && enable) {
  printk("%s: External SRAM, %s access%s, %dbytes/SCB\n",
         ahc_name(ahc), fast ? "fast" : "slow",
         pcheck ? ", parity checking enabled" : "",
         large ? 64 : 32);
 }
 ahc_scbram_config(ahc, enable, pcheck, fast, large);
}
