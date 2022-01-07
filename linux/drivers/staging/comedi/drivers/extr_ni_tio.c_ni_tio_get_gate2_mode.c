
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_index; } ;


 unsigned int CR_INVERT ;
 unsigned int GI_GATE2_MODE ;
 unsigned int GI_GATE2_POL_INVERT ;
 int NITIO_GATE2_REG (int ) ;
 unsigned int NI_GPCT_DISABLED_GATE_SELECT ;
 unsigned int ni_tio_get_soft_copy (struct ni_gpct*,int ) ;

__attribute__((used)) static inline unsigned int ni_tio_get_gate2_mode(struct ni_gpct *counter)
{
 unsigned int mode = ni_tio_get_soft_copy(
  counter, NITIO_GATE2_REG(counter->counter_index));
 unsigned int ret = 0;

 if (!(mode & GI_GATE2_MODE))
  ret |= NI_GPCT_DISABLED_GATE_SELECT;
 if (mode & GI_GATE2_POL_INVERT)
  ret |= CR_INVERT;

 return ret;
}
