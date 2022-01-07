
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_tmode_tstate {struct ahd_initiator_tinfo* transinfo; } ;
struct ahd_softc {struct ahd_tmode_tstate** enabled_targets; } ;
struct ahd_initiator_tinfo {int dummy; } ;



struct ahd_initiator_tinfo *
ahd_fetch_transinfo(struct ahd_softc *ahd, char channel, u_int our_id,
      u_int remote_id, struct ahd_tmode_tstate **tstate)
{






 if (channel == 'B')
  our_id += 8;
 *tstate = ahd->enabled_targets[our_id];
 return (&(*tstate)->transinfo[remote_id]);
}
