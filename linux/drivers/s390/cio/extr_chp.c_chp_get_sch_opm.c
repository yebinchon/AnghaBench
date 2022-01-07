
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int * chpid; } ;
struct TYPE_4__ {TYPE_1__ pmcw; } ;
struct subchannel {TYPE_2__ schib; } ;
struct chp_id {int id; } ;


 scalar_t__ chp_get_status (struct chp_id) ;
 int chp_id_init (struct chp_id*) ;

u8 chp_get_sch_opm(struct subchannel *sch)
{
 struct chp_id chpid;
 int opm;
 int i;

 opm = 0;
 chp_id_init(&chpid);
 for (i = 0; i < 8; i++) {
  opm <<= 1;
  chpid.id = sch->schib.pmcw.chpid[i];
  if (chp_get_status(chpid) != 0)
   opm |= 1;
 }
 return opm;
}
