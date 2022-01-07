
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;
struct intelfb_info {TYPE_1__ ring; scalar_t__ ring_space; int accel; } ;


 int DBG_MSG (char*) ;
 scalar_t__ RING_MIN_FREE ;
 int do_flush (struct intelfb_info*) ;
 int wait_ring (struct intelfb_info*,scalar_t__) ;

void intelfbhw_do_sync(struct intelfb_info *dinfo)
{




 if (!dinfo->accel)
  return;






 do_flush(dinfo);
 wait_ring(dinfo, dinfo->ring.size - RING_MIN_FREE);
 dinfo->ring_space = dinfo->ring.size - RING_MIN_FREE;
}
