
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;


 int dma_get_required_mask (int ) ;
 int to_vmd_dev (struct device*) ;

__attribute__((used)) static u64 vmd_get_required_mask(struct device *dev)
{
 return dma_get_required_mask(to_vmd_dev(dev));
}
