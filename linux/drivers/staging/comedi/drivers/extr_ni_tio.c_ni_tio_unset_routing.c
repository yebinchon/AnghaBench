
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {int dummy; } ;


 int EINVAL ;
 unsigned int NI_GATES_NAMES_BASE ;
 unsigned int NI_GATES_NAMES_MAX ;
 int NI_GPCT_DISABLED_GATE_SELECT ;
 int ni_tio_set_routing (struct ni_gpct_device*,unsigned int,int ) ;

int ni_tio_unset_routing(struct ni_gpct_device *counter_dev, unsigned int dest)
{
 if (dest >= NI_GATES_NAMES_BASE && dest <= NI_GATES_NAMES_MAX)

  return ni_tio_set_routing(counter_dev, dest,
       NI_GPCT_DISABLED_GATE_SELECT);







 return -EINVAL;
}
