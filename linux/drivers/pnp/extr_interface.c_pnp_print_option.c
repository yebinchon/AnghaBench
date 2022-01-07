
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma; int irq; int mem; int port; } ;
struct pnp_option {int type; TYPE_1__ u; } ;
typedef int pnp_info_buffer_t ;






 int pnp_print_dma (int *,char*,int *) ;
 int pnp_print_irq (int *,char*,int *) ;
 int pnp_print_mem (int *,char*,int *) ;
 int pnp_print_port (int *,char*,int *) ;

__attribute__((used)) static void pnp_print_option(pnp_info_buffer_t * buffer, char *space,
        struct pnp_option *option)
{
 switch (option->type) {
 case 130:
  pnp_print_port(buffer, space, &option->u.port);
  break;
 case 128:
  pnp_print_mem(buffer, space, &option->u.mem);
  break;
 case 129:
  pnp_print_irq(buffer, space, &option->u.irq);
  break;
 case 131:
  pnp_print_dma(buffer, space, &option->u.dma);
  break;
 }
}
