
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_dev {int dummy; } ;
struct vhost_attach_cgroups_struct {int ret; int work; int owner; } ;


 int current ;
 int vhost_attach_cgroups_work ;
 int vhost_work_flush (struct vhost_dev*,int *) ;
 int vhost_work_init (int *,int ) ;
 int vhost_work_queue (struct vhost_dev*,int *) ;

__attribute__((used)) static int vhost_attach_cgroups(struct vhost_dev *dev)
{
 struct vhost_attach_cgroups_struct attach;

 attach.owner = current;
 vhost_work_init(&attach.work, vhost_attach_cgroups_work);
 vhost_work_queue(dev, &attach.work);
 vhost_work_flush(dev, &attach.work);
 return attach.ret;
}
