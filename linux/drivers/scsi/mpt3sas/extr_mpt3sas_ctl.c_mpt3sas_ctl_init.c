
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;


 int MPT2SAS_DRIVER_NAME ;
 int MPT2SAS_MINOR ;
 int MPT3SAS_DRIVER_NAME ;
 int MPT3SAS_MINOR ;
 int * async_queue ;
 int ctl_dev ;
 int ctl_poll_wait ;
 int gen2_ctl_dev ;
 int init_waitqueue_head (int *) ;
 scalar_t__ misc_register (int *) ;
 int pr_err (char*,int ,int ) ;

void
mpt3sas_ctl_init(ushort hbas_to_enumerate)
{
 async_queue = ((void*)0);




 if (hbas_to_enumerate != 1)
  if (misc_register(&ctl_dev) < 0)
   pr_err("%s can't register misc device [minor=%d]\n",
       MPT3SAS_DRIVER_NAME, MPT3SAS_MINOR);




 if (hbas_to_enumerate != 2)
  if (misc_register(&gen2_ctl_dev) < 0)
   pr_err("%s can't register misc device [minor=%d]\n",
       MPT2SAS_DRIVER_NAME, MPT2SAS_MINOR);

 init_waitqueue_head(&ctl_poll_wait);
}
