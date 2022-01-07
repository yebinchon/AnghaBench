
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int dummy; } ;


 int EINVAL ;
 unsigned int ni_tio_get_gate2_mode (struct ni_gpct*) ;
 unsigned int ni_tio_get_gate2_val (struct ni_gpct*) ;
 unsigned int ni_tio_get_gate_mode (struct ni_gpct*) ;
 unsigned int ni_tio_get_gate_val (struct ni_gpct*) ;

__attribute__((used)) static int ni_tio_get_gate_src_raw(struct ni_gpct *counter,
       unsigned int gate_index,
       unsigned int *gate_source)
{
 switch (gate_index) {
 case 0:
  *gate_source = ni_tio_get_gate_mode(counter)
        | ni_tio_get_gate_val(counter);
  break;
 case 1:
  *gate_source = ni_tio_get_gate2_mode(counter)
        | ni_tio_get_gate2_val(counter);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
