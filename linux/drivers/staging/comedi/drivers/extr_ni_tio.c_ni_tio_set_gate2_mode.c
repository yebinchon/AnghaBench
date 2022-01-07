
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_index; } ;


 int CR_CHAN (unsigned int) ;
 unsigned int CR_INVERT ;
 unsigned int GI_GATE2_MODE ;
 unsigned int GI_GATE2_POL_INVERT ;
 unsigned int GI_GATING_DISABLED ;
 int NITIO_GATE2_REG (int ) ;
 int NI_GPCT_DISABLED_GATE_SELECT ;
 int ni_tio_set_bits (struct ni_gpct*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static inline void ni_tio_set_gate2_mode(struct ni_gpct *counter,
      unsigned int src)
{






 unsigned int mode_bits = GI_GATE2_MODE;

 if (CR_CHAN(src) & NI_GPCT_DISABLED_GATE_SELECT)




  mode_bits = GI_GATING_DISABLED;
 if (src & CR_INVERT)
  mode_bits |= GI_GATE2_POL_INVERT;

 ni_tio_set_bits(counter, NITIO_GATE2_REG(counter->counter_index),
   GI_GATE2_POL_INVERT | GI_GATE2_MODE, mode_bits);
}
