
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wait; } ;
struct tegra_fuse {TYPE_1__ apbdma; } ;


 int complete (int *) ;

__attribute__((used)) static void apb_dma_complete(void *args)
{
 struct tegra_fuse *fuse = args;

 complete(&fuse->apbdma.wait);
}
