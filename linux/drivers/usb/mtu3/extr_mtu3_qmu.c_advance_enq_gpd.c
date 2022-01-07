
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmu_gpd {int dummy; } ;
struct mtu3_gpd_ring {scalar_t__ enqueue; scalar_t__ end; scalar_t__ start; } ;



__attribute__((used)) static struct qmu_gpd *advance_enq_gpd(struct mtu3_gpd_ring *ring)
{
 if (ring->enqueue < ring->end)
  ring->enqueue++;
 else
  ring->enqueue = ring->start;

 return ring->enqueue;
}
