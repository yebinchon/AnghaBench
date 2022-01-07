
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct tb10x_pinctrl {int base; TYPE_1__* ports; } ;
struct TYPE_2__ {unsigned int mode; scalar_t__ count; } ;


 unsigned int PCFG_PORT_BITWIDTH ;
 unsigned int PCFG_PORT_MASK (unsigned int) ;
 unsigned int ioread32 (int ) ;
 int iowrite32 (unsigned int,int ) ;

__attribute__((used)) static inline void tb10x_pinctrl_set_config(struct tb10x_pinctrl *state,
    unsigned int port, unsigned int mode)
{
 u32 pcfg;

 if (state->ports[port].count)
  return;

 state->ports[port].mode = mode;

 pcfg = ioread32(state->base) & ~(PCFG_PORT_MASK(port));
 pcfg |= (mode << (PCFG_PORT_BITWIDTH * port)) & PCFG_PORT_MASK(port);
 iowrite32(pcfg, state->base);
}
