
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_umem {int dummy; } ;


 int GFP_KERNEL ;
 struct vhost_umem* kvzalloc (int,int ) ;

struct vhost_umem *vhost_dev_reset_owner_prepare(void)
{
 return kvzalloc(sizeof(struct vhost_umem), GFP_KERNEL);
}
