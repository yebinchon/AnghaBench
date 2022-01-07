
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vhost_work_fn_t ;
struct vhost_work {int fn; int flags; } ;


 int VHOST_WORK_QUEUED ;
 int clear_bit (int ,int *) ;

void vhost_work_init(struct vhost_work *work, vhost_work_fn_t fn)
{
 clear_bit(VHOST_WORK_QUEUED, &work->flags);
 work->fn = fn;
}
