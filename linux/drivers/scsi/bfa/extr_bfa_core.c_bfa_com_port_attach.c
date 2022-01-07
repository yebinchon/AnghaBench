
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_port_s {int dummy; } ;
struct TYPE_2__ {struct bfa_port_s port; } ;
struct bfa_s {int trcmod; int ioc; TYPE_1__ modules; } ;
struct bfa_mem_dma_s {int dma_curp; int kva_curp; } ;


 struct bfa_mem_dma_s* BFA_MEM_PORT_DMA (struct bfa_s*) ;
 int bfa_port_attach (struct bfa_port_s*,int *,struct bfa_s*,int ) ;
 int bfa_port_mem_claim (struct bfa_port_s*,int ,int ) ;

__attribute__((used)) static void
bfa_com_port_attach(struct bfa_s *bfa)
{
 struct bfa_port_s *port = &bfa->modules.port;
 struct bfa_mem_dma_s *port_dma = BFA_MEM_PORT_DMA(bfa);

 bfa_port_attach(port, &bfa->ioc, bfa, bfa->trcmod);
 bfa_port_mem_claim(port, port_dma->kva_curp, port_dma->dma_curp);
}
