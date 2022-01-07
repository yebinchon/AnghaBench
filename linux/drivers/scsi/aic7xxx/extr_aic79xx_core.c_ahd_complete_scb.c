
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scb {TYPE_1__* hscb; } ;
struct ahd_softc {int dummy; } ;
struct TYPE_2__ {int sgptr; } ;


 int SG_STATUS_VALID ;
 int ahd_done (struct ahd_softc*,struct scb*) ;
 int ahd_handle_scb_status (struct ahd_softc*,struct scb*) ;
 int ahd_le32toh (int ) ;

__attribute__((used)) static inline void
ahd_complete_scb(struct ahd_softc *ahd, struct scb *scb)
{
 uint32_t sgptr;

 sgptr = ahd_le32toh(scb->hscb->sgptr);
 if ((sgptr & SG_STATUS_VALID) != 0)
  ahd_handle_scb_status(ahd, scb);
 else
  ahd_done(ahd, scb);
}
