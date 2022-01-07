
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int tqinfifonext; } ;


 int AHD_MODE_CCHAN ;
 int AHD_MODE_SCSI ;
 int BITBUCKET ;
 int CLRINT ;
 int CLRSEQINT ;
 int ENAUTOATNP ;
 int ENRSELI ;
 int ENSELI ;
 int FASTMODE ;
 int LASTPHASE ;
 int MSG_NOOP ;
 int MSG_OUT ;
 int P_BUSFREE ;
 int SAVED_LUN ;
 int SAVED_SCSIID ;
 int SCSISEQ1 ;
 int SCSISEQ_TEMPLATE ;
 int SCSISIGO ;
 int SEQCTL0 ;
 int SEQINTCTL ;
 int SEQRESET ;
 int SEQ_FLAGS ;
 int SXFRCTL1 ;
 int TQINPOS ;
 int ahd_clear_msg_state (struct ahd_softc*) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_pause (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 int ahd_unpause (struct ahd_softc*) ;

__attribute__((used)) static void
ahd_restart(struct ahd_softc *ahd)
{

 ahd_pause(ahd);

 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);


 ahd_clear_msg_state(ahd);
 ahd_outb(ahd, SCSISIGO, 0);
 ahd_outb(ahd, MSG_OUT, MSG_NOOP);
 ahd_outb(ahd, SXFRCTL1, ahd_inb(ahd, SXFRCTL1) & ~BITBUCKET);
 ahd_outb(ahd, SEQINTCTL, 0);
 ahd_outb(ahd, LASTPHASE, P_BUSFREE);
 ahd_outb(ahd, SEQ_FLAGS, 0);
 ahd_outb(ahd, SAVED_SCSIID, 0xFF);
 ahd_outb(ahd, SAVED_LUN, 0xFF);
 ahd_outb(ahd, TQINPOS, ahd->tqinfifonext);


 ahd_outb(ahd, SCSISEQ1,
   ahd_inb(ahd, SCSISEQ_TEMPLATE) & (ENSELI|ENRSELI|ENAUTOATNP));
 ahd_set_modes(ahd, AHD_MODE_CCHAN, AHD_MODE_CCHAN);






 ahd_outb(ahd, CLRINT, CLRSEQINT);

 ahd_outb(ahd, SEQCTL0, FASTMODE|SEQRESET);
 ahd_unpause(ahd);
}
