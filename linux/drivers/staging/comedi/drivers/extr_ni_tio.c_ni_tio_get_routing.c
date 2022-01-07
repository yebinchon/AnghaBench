
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {struct ni_gpct* counters; } ;
struct ni_gpct {int dummy; } ;


 int EINVAL ;
 unsigned int NI_COUNTER_NAMES_BASE ;
 unsigned int NI_CtrA (int ) ;
 unsigned int NI_CtrAux (int) ;
 unsigned int NI_CtrGate (int) ;
 unsigned int NI_CtrZ (int) ;
 unsigned int NI_MAX_COUNTERS ;
 int ni_tio_get_gate_src_raw (struct ni_gpct*,int,unsigned int*) ;
 int ni_tio_get_other_src (struct ni_gpct*,unsigned int,unsigned int*) ;

int ni_tio_get_routing(struct ni_gpct_device *counter_dev, unsigned int dest)
{

 int ctr_index = (dest - NI_COUNTER_NAMES_BASE) % NI_MAX_COUNTERS;
 struct ni_gpct *counter = &counter_dev->counters[ctr_index];
 int ret = 1;
 unsigned int reg;

 if (dest >= NI_CtrA(0) && dest <= NI_CtrZ(-1)) {
  ret = ni_tio_get_other_src(counter, dest, &reg);
 } else if (dest >= NI_CtrGate(0) && dest <= NI_CtrGate(-1)) {
  ret = ni_tio_get_gate_src_raw(counter, 0, &reg);
 } else if (dest >= NI_CtrAux(0) && dest <= NI_CtrAux(-1)) {
  ret = ni_tio_get_gate_src_raw(counter, 1, &reg);






 }

 if (ret)
  return -EINVAL;

 return reg;
}
