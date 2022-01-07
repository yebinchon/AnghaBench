
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct visornic_devdata {int dummy; } ;


 scalar_t__ devdata_xmits_outstanding (struct visornic_devdata*) ;

__attribute__((used)) static bool vnic_hit_high_watermark(struct visornic_devdata *devdata,
        ulong high_watermark)
{
 return (devdata_xmits_outstanding(devdata) >= high_watermark);
}
