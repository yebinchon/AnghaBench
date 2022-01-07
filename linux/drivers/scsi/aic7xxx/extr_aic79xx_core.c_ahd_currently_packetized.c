
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int bugs; } ;
typedef int ahd_mode_state ;


 int AHD_MODE_CFG ;
 int AHD_MODE_SCSI ;
 int AHD_PKTIZED_STATUS_BUG ;
 int LQISTAT2 ;
 int LQISTATE ;
 int PACKETIZED ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_restore_modes (struct ahd_softc*,int ) ;
 int ahd_save_modes (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;

__attribute__((used)) static int
ahd_currently_packetized(struct ahd_softc *ahd)
{
 ahd_mode_state saved_modes;
 int packetized;

 saved_modes = ahd_save_modes(ahd);
 if ((ahd->bugs & AHD_PKTIZED_STATUS_BUG) != 0) {





  ahd_set_modes(ahd, AHD_MODE_CFG, AHD_MODE_CFG);
  packetized = ahd_inb(ahd, LQISTATE) != 0;
 } else {
  ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
  packetized = ahd_inb(ahd, LQISTAT2) & PACKETIZED;
 }
 ahd_restore_modes(ahd, saved_modes);
 return (packetized);
}
