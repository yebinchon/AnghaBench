
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int flags; } ;
typedef int ahd_mode_state ;


 int AHD_HAD_FIRST_SEL ;
 int AHD_MODE_CFG ;
 int AHD_MODE_SCSI ;
 int AHD_SHOW_MISC ;
 int BYPASSENAB ;
 int CLRINT ;
 int CLRSCSIINT ;
 int DSPDATACTL ;
 int ENAB40 ;
 int ENSELDI ;
 int ENSELDO ;
 int SBLKCTL ;
 int SIMODE0 ;
 int ahd_debug ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_restore_modes (struct ahd_softc*,int ) ;
 int ahd_save_modes (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 int printk (char*,int ) ;

__attribute__((used)) static void
ahd_iocell_first_selection(struct ahd_softc *ahd)
{
 ahd_mode_state saved_modes;
 u_int sblkctl;

 if ((ahd->flags & AHD_HAD_FIRST_SEL) != 0)
  return;
 saved_modes = ahd_save_modes(ahd);
 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
 sblkctl = ahd_inb(ahd, SBLKCTL);
 ahd_set_modes(ahd, AHD_MODE_CFG, AHD_MODE_CFG);




 if ((sblkctl & ENAB40) != 0) {
  ahd_outb(ahd, DSPDATACTL,
    ahd_inb(ahd, DSPDATACTL) & ~BYPASSENAB);




 }
 ahd_outb(ahd, SIMODE0, ahd_inb(ahd, SIMODE0) & ~(ENSELDO|ENSELDI));
 ahd_outb(ahd, CLRINT, CLRSCSIINT);
 ahd_restore_modes(ahd, saved_modes);
 ahd->flags |= AHD_HAD_FIRST_SEL;
}
