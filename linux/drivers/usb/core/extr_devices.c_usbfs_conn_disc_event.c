
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wait; int count; } ;


 int atomic_add (int,int *) ;
 TYPE_1__ device_event ;
 int wake_up (int *) ;

void usbfs_conn_disc_event(void)
{
 atomic_add(2, &device_event.count);
 wake_up(&device_event.wait);
}
