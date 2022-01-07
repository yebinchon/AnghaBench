
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_2__ {int pa; int * kva; } ;
struct bfa_port_s {TYPE_1__ stats_dma; } ;



void
bfa_port_mem_claim(struct bfa_port_s *port, u8 *dma_kva, u64 dma_pa)
{
 port->stats_dma.kva = dma_kva;
 port->stats_dma.pa = dma_pa;
}
