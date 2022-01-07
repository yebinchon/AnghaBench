
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmu_gpd {int dummy; } ;
struct mtu3_gpd_ring {struct qmu_gpd* end; struct qmu_gpd* dequeue; struct qmu_gpd* enqueue; struct qmu_gpd* start; } ;


 int MAX_GPD_NUM ;

__attribute__((used)) static void gpd_ring_init(struct mtu3_gpd_ring *ring, struct qmu_gpd *gpd)
{
 ring->start = gpd;
 ring->enqueue = gpd;
 ring->dequeue = gpd;
 ring->end = gpd + MAX_GPD_NUM - 1;
}
