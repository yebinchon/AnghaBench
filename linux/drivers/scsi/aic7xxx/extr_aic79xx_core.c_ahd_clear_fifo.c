
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;
typedef int ahd_mode_state ;


 int AHD_SHOW_FIFOS ;
 scalar_t__ CCSGCTL ;
 int CCSGRESET ;
 int CLRSHCNT ;
 scalar_t__ DFFSXFRCTL ;
 int FETCH_INPROG ;
 int INVALID_ADDR ;
 scalar_t__ LONGJMP_ADDR ;
 int RSTCHN ;
 scalar_t__ SG_STATE ;
 int ahd_debug ;
 int ahd_inb (struct ahd_softc*,scalar_t__) ;
 int ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,scalar_t__,int) ;
 int ahd_restore_modes (struct ahd_softc*,int ) ;
 int ahd_save_modes (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 int printk (char*,int ,int ) ;

__attribute__((used)) static void
ahd_clear_fifo(struct ahd_softc *ahd, u_int fifo)
{
 ahd_mode_state saved_modes;





 saved_modes = ahd_save_modes(ahd);
 ahd_set_modes(ahd, fifo, fifo);
 ahd_outb(ahd, DFFSXFRCTL, RSTCHN|CLRSHCNT);
 if ((ahd_inb(ahd, SG_STATE) & FETCH_INPROG) != 0)
  ahd_outb(ahd, CCSGCTL, CCSGRESET);
 ahd_outb(ahd, LONGJMP_ADDR + 1, INVALID_ADDR);
 ahd_outb(ahd, SG_STATE, 0);
 ahd_restore_modes(ahd, saved_modes);
}
