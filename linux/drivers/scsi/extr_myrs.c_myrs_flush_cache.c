
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myrs_hba {int dummy; } ;


 int MYRS_IOCTL_FLUSH_DEVICE_DATA ;
 int MYRS_RAID_CONTROLLER ;
 int myrs_dev_op (struct myrs_hba*,int ,int ) ;

void myrs_flush_cache(struct myrs_hba *cs)
{
 myrs_dev_op(cs, MYRS_IOCTL_FLUSH_DEVICE_DATA, MYRS_RAID_CONTROLLER);
}
