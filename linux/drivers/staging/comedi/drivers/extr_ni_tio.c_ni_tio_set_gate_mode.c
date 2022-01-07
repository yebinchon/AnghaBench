
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_index; } ;


 int CR_CHAN (unsigned int) ;
 unsigned int CR_EDGE ;
 unsigned int CR_INVERT ;
 unsigned int GI_GATE_POL_INVERT ;
 unsigned int GI_GATING_DISABLED ;
 unsigned int GI_GATING_MODE_MASK ;
 unsigned int GI_LEVEL_GATING ;
 unsigned int GI_RISING_EDGE_GATING ;
 int NITIO_MODE_REG (int ) ;
 int NI_GPCT_DISABLED_GATE_SELECT ;
 int ni_tio_set_bits (struct ni_gpct*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static inline void ni_tio_set_gate_mode(struct ni_gpct *counter,
     unsigned int src)
{
 unsigned int mode_bits = 0;

 if (CR_CHAN(src) & NI_GPCT_DISABLED_GATE_SELECT) {




  mode_bits = GI_GATING_DISABLED;
 } else {
  if (src & CR_INVERT)
   mode_bits |= GI_GATE_POL_INVERT;
  if (src & CR_EDGE)
   mode_bits |= GI_RISING_EDGE_GATING;
  else
   mode_bits |= GI_LEVEL_GATING;
 }
 ni_tio_set_bits(counter, NITIO_MODE_REG(counter->counter_index),
   GI_GATE_POL_INVERT | GI_GATING_MODE_MASK,
   mode_bits);
}
