
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cppi41_dma_controller {int dummy; } ;


 int cppi41_release_all_dma_chans (struct cppi41_dma_controller*) ;

__attribute__((used)) static void cppi41_dma_controller_stop(struct cppi41_dma_controller *controller)
{
 cppi41_release_all_dma_chans(controller);
}
