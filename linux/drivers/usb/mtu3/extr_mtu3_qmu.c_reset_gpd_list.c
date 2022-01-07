
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmu_gpd {int dw0_info; } ;
struct mtu3_gpd_ring {struct qmu_gpd* start; } ;
struct mtu3_ep {struct mtu3_gpd_ring gpd_ring; } ;


 int GPD_FLAGS_HWO ;
 int cpu_to_le32 (int ) ;
 int gpd_ring_init (struct mtu3_gpd_ring*,struct qmu_gpd*) ;

__attribute__((used)) static void reset_gpd_list(struct mtu3_ep *mep)
{
 struct mtu3_gpd_ring *ring = &mep->gpd_ring;
 struct qmu_gpd *gpd = ring->start;

 if (gpd) {
  gpd->dw0_info &= cpu_to_le32(~GPD_FLAGS_HWO);
  gpd_ring_init(ring, gpd);
 }
}
