
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_index; } ;


 unsigned int CR_EDGE ;
 unsigned int CR_INVERT ;
 unsigned int GI_GATE_POL_INVERT ;
 unsigned int GI_GATING_DISABLED ;
 unsigned int GI_GATING_MODE_MASK ;
 unsigned int GI_LEVEL_GATING ;
 int NITIO_MODE_REG (int ) ;
 unsigned int NI_GPCT_DISABLED_GATE_SELECT ;
 unsigned int ni_tio_get_soft_copy (struct ni_gpct*,int ) ;

__attribute__((used)) static inline unsigned int ni_tio_get_gate_mode(struct ni_gpct *counter)
{
 unsigned int mode = ni_tio_get_soft_copy(
  counter, NITIO_MODE_REG(counter->counter_index));
 unsigned int ret = 0;

 if ((mode & GI_GATING_MODE_MASK) == GI_GATING_DISABLED)
  ret |= NI_GPCT_DISABLED_GATE_SELECT;
 if (mode & GI_GATE_POL_INVERT)
  ret |= CR_INVERT;
 if ((mode & GI_GATING_MODE_MASK) != GI_LEVEL_GATING)
  ret |= CR_EDGE;

 return ret;
}
