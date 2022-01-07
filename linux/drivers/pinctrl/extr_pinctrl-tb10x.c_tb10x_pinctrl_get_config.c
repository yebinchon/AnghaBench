
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb10x_pinctrl {int base; } ;


 unsigned int PCFG_PORT_BITWIDTH ;
 unsigned int PCFG_PORT_MASK (unsigned int) ;
 unsigned int ioread32 (int ) ;

__attribute__((used)) static inline unsigned int tb10x_pinctrl_get_config(
    struct tb10x_pinctrl *state,
    unsigned int port)
{
 return (ioread32(state->base) & PCFG_PORT_MASK(port))
  >> (PCFG_PORT_BITWIDTH * port);
}
