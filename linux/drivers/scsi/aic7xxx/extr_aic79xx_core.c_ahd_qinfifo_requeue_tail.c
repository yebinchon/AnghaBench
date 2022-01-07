
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct scb {int dummy; } ;
struct ahd_softc {size_t* qinfifo; scalar_t__ qinfifonext; } ;
typedef int ahd_mode_state ;


 int AHD_MODE_CCHAN ;
 size_t AHD_QIN_WRAP (scalar_t__) ;
 struct scb* ahd_lookup_scb (struct ahd_softc*,size_t) ;
 scalar_t__ ahd_qinfifo_count (struct ahd_softc*) ;
 int ahd_qinfifo_requeue (struct ahd_softc*,struct scb*,struct scb*) ;
 int ahd_restore_modes (struct ahd_softc*,int ) ;
 int ahd_save_modes (struct ahd_softc*) ;
 int ahd_set_hnscb_qoff (struct ahd_softc*,scalar_t__) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;

void
ahd_qinfifo_requeue_tail(struct ahd_softc *ahd, struct scb *scb)
{
 struct scb *prev_scb;
 ahd_mode_state saved_modes;

 saved_modes = ahd_save_modes(ahd);
 ahd_set_modes(ahd, AHD_MODE_CCHAN, AHD_MODE_CCHAN);
 prev_scb = ((void*)0);
 if (ahd_qinfifo_count(ahd) != 0) {
  u_int prev_tag;
  u_int prev_pos;

  prev_pos = AHD_QIN_WRAP(ahd->qinfifonext - 1);
  prev_tag = ahd->qinfifo[prev_pos];
  prev_scb = ahd_lookup_scb(ahd, prev_tag);
 }
 ahd_qinfifo_requeue(ahd, prev_scb, scb);
 ahd_set_hnscb_qoff(ahd, ahd->qinfifonext);
 ahd_restore_modes(ahd, saved_modes);
}
