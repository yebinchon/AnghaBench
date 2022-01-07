
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int ;
struct ahd_softc {int flags; int dev_softc; } ;


 int AHD_CURRENT_SENSING ;
 int AHD_STPWLEVEL_A ;
 int AHD_TERM_ENB_A ;
 int CFAUTOTERM ;
 int CFSEAUTOTERM ;
 int CFSEHIGHTERM ;
 int CFSELOWTERM ;
 int CFSTERM ;
 int CFWSTERM ;
 int DEVCONFIG ;
 int FLXADDR_ROMSTAT_CURSENSECTL ;
 int FLXADDR_TERMCTL ;
 int FLX_TERMCTL_ENPRIHIGH ;
 int FLX_TERMCTL_ENPRILOW ;
 int FLX_TERMCTL_ENSECHIGH ;
 int FLX_TERMCTL_ENSECLOW ;
 int STPWEN ;
 int STPWLEVEL ;
 int SXFRCTL1 ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_pci_read_config (int ,int ,int) ;
 int ahd_pci_write_config (int ,int ,int,int) ;
 int ahd_read_flexport (struct ahd_softc*,int ,int*) ;
 int ahd_write_flexport (struct ahd_softc*,int ,int) ;
 scalar_t__ bootverbose ;
 int printk (char*,int ,...) ;

__attribute__((used)) static void
ahd_configure_termination(struct ahd_softc *ahd, u_int adapter_control)
{
 int error;
 u_int sxfrctl1;
 uint8_t termctl;
 uint32_t devconfig;

 devconfig = ahd_pci_read_config(ahd->dev_softc, DEVCONFIG, 4);
 devconfig &= ~STPWLEVEL;
 if ((ahd->flags & AHD_STPWLEVEL_A) != 0)
  devconfig |= STPWLEVEL;
 if (bootverbose)
  printk("%s: STPWLEVEL is %s\n",
         ahd_name(ahd), (devconfig & STPWLEVEL) ? "on" : "off");
 ahd_pci_write_config(ahd->dev_softc, DEVCONFIG, devconfig, 4);


 if ((ahd->flags & AHD_CURRENT_SENSING) != 0) {
  (void)ahd_write_flexport(ahd, FLXADDR_ROMSTAT_CURSENSECTL, 0);
 }




 error = ahd_read_flexport(ahd, FLXADDR_TERMCTL, &termctl);
 if ((adapter_control & CFAUTOTERM) == 0) {
  if (bootverbose)
   printk("%s: Manual Primary Termination\n",
          ahd_name(ahd));
  termctl &= ~(FLX_TERMCTL_ENPRILOW|FLX_TERMCTL_ENPRIHIGH);
  if ((adapter_control & CFSTERM) != 0)
   termctl |= FLX_TERMCTL_ENPRILOW;
  if ((adapter_control & CFWSTERM) != 0)
   termctl |= FLX_TERMCTL_ENPRIHIGH;
 } else if (error != 0) {
  printk("%s: Primary Auto-Term Sensing failed! "
         "Using Defaults.\n", ahd_name(ahd));
  termctl = FLX_TERMCTL_ENPRILOW|FLX_TERMCTL_ENPRIHIGH;
 }

 if ((adapter_control & CFSEAUTOTERM) == 0) {
  if (bootverbose)
   printk("%s: Manual Secondary Termination\n",
          ahd_name(ahd));
  termctl &= ~(FLX_TERMCTL_ENSECLOW|FLX_TERMCTL_ENSECHIGH);
  if ((adapter_control & CFSELOWTERM) != 0)
   termctl |= FLX_TERMCTL_ENSECLOW;
  if ((adapter_control & CFSEHIGHTERM) != 0)
   termctl |= FLX_TERMCTL_ENSECHIGH;
 } else if (error != 0) {
  printk("%s: Secondary Auto-Term Sensing failed! "
         "Using Defaults.\n", ahd_name(ahd));
  termctl |= FLX_TERMCTL_ENSECLOW|FLX_TERMCTL_ENSECHIGH;
 }




 sxfrctl1 = ahd_inb(ahd, SXFRCTL1) & ~STPWEN;
 ahd->flags &= ~AHD_TERM_ENB_A;
 if ((termctl & FLX_TERMCTL_ENPRILOW) != 0) {
  ahd->flags |= AHD_TERM_ENB_A;
  sxfrctl1 |= STPWEN;
 }

 ahd_outb(ahd, SXFRCTL1, sxfrctl1|STPWEN);
 ahd_outb(ahd, SXFRCTL1, sxfrctl1);

 error = ahd_write_flexport(ahd, FLXADDR_TERMCTL, termctl);
 if (error != 0) {
  printk("%s: Unable to set termination settings!\n",
         ahd_name(ahd));
 } else if (bootverbose) {
  printk("%s: Primary High byte termination %sabled\n",
         ahd_name(ahd),
         (termctl & FLX_TERMCTL_ENPRIHIGH) ? "En" : "Dis");

  printk("%s: Primary Low byte termination %sabled\n",
         ahd_name(ahd),
         (termctl & FLX_TERMCTL_ENPRILOW) ? "En" : "Dis");

  printk("%s: Secondary High byte termination %sabled\n",
         ahd_name(ahd),
         (termctl & FLX_TERMCTL_ENSECHIGH) ? "En" : "Dis");

  printk("%s: Secondary Low byte termination %sabled\n",
         ahd_name(ahd),
         (termctl & FLX_TERMCTL_ENSECLOW) ? "En" : "Dis");
 }
 return;
}
