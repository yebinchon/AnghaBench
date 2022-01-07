
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;


 int dma_supported (int ,int ) ;
 int to_vmd_dev (struct device*) ;

__attribute__((used)) static int vmd_dma_supported(struct device *dev, u64 mask)
{
 return dma_supported(to_vmd_dev(dev), mask);
}
