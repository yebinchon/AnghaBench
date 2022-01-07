
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mgsl_struct {scalar_t__ bus_type; } ;
struct TYPE_3__ {int * virt_addr; int dma_addr; } ;
typedef TYPE_1__ DMABUFFERENTRY ;


 int DMABUFFERSIZE ;
 scalar_t__ MGSL_BUS_TYPE_PCI ;
 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void mgsl_free_frame_memory(struct mgsl_struct *info, DMABUFFERENTRY *BufferList, int Buffercount)
{
 int i;

 if ( BufferList ) {
  for ( i = 0 ; i < Buffercount ; i++ ) {
   if ( BufferList[i].virt_addr ) {
    if ( info->bus_type != MGSL_BUS_TYPE_PCI )
     dma_free_coherent(((void*)0), DMABUFFERSIZE, BufferList[i].virt_addr, BufferList[i].dma_addr);
    BufferList[i].virt_addr = ((void*)0);
   }
  }
 }

}
