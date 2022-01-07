
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int physical; int size; } ;
struct intelfb_info {int ring_active; TYPE_1__ ring; int accel; } ;


 int DBG_MSG (char*,int ,int) ;
 int GTT_PAGE_SIZE ;
 int OUTREG (int ,int) ;
 int PRI_RING_HEAD ;
 int PRI_RING_LENGTH ;
 int PRI_RING_START ;
 int PRI_RING_TAIL ;
 int RING_ENABLE ;
 int RING_LENGTH_MASK ;
 int RING_NO_REPORT ;
 int RING_START_MASK ;
 int refresh_ring (struct intelfb_info*) ;

void intelfbhw_2d_start(struct intelfb_info *dinfo)
{





 if (!dinfo->accel)
  return;


 OUTREG(PRI_RING_LENGTH, 0);
 OUTREG(PRI_RING_TAIL, 0);
 OUTREG(PRI_RING_HEAD, 0);

 OUTREG(PRI_RING_START, dinfo->ring.physical & RING_START_MASK);
 OUTREG(PRI_RING_LENGTH,
  ((dinfo->ring.size - GTT_PAGE_SIZE) & RING_LENGTH_MASK) |
  RING_NO_REPORT | RING_ENABLE);
 refresh_ring(dinfo);
 dinfo->ring_active = 1;
}
