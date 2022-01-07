
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef long u32 ;
struct file {int dummy; } ;
struct TYPE_3__ {unsigned long a_suspend_req_inf; unsigned long a_bus_drop; unsigned long a_bus_req; unsigned long b_bus_req; } ;
struct TYPE_4__ {long host_working; TYPE_1__ fsm; } ;







 TYPE_2__* fsl_otg_dev ;
 int otg_statemachine (TYPE_1__*) ;

__attribute__((used)) static long fsl_otg_ioctl(struct file *file, unsigned int cmd,
     unsigned long arg)
{
 u32 retval = 0;

 switch (cmd) {
 case 132:
  retval = fsl_otg_dev->host_working;
  break;

 case 129:
  fsl_otg_dev->fsm.a_suspend_req_inf = arg;
  break;

 case 131:
  fsl_otg_dev->fsm.a_bus_drop = arg;
  break;

 case 130:
  fsl_otg_dev->fsm.a_bus_req = arg;
  break;

 case 128:
  fsl_otg_dev->fsm.b_bus_req = arg;
  break;

 default:
  break;
 }

 otg_statemachine(&fsl_otg_dev->fsm);

 return retval;
}
