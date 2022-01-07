
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_user_data {int evtchn_async_queue; } ;
struct file {struct per_user_data* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int evtchn_fasync(int fd, struct file *filp, int on)
{
 struct per_user_data *u = filp->private_data;
 return fasync_helper(fd, filp, on, &u->evtchn_async_queue);
}
