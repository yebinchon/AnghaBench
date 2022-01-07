
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmu_gpd {int dummy; } ;
struct mtu3_gpd_ring {struct qmu_gpd* dequeue; struct qmu_gpd* start; struct qmu_gpd* end; struct qmu_gpd* enqueue; } ;



__attribute__((used)) static int gpd_ring_empty(struct mtu3_gpd_ring *ring)
{
 struct qmu_gpd *enq = ring->enqueue;
 struct qmu_gpd *next;

 if (ring->enqueue < ring->end)
  next = enq + 1;
 else
  next = ring->start;


 return next == ring->dequeue;
}
