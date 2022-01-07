
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_umem {int umem_list; } ;
struct vhost_dev {int nvqs; TYPE_1__** vqs; struct vhost_umem* umem; } ;
struct TYPE_2__ {struct vhost_umem* umem; } ;


 int INIT_LIST_HEAD (int *) ;
 int vhost_dev_cleanup (struct vhost_dev*) ;

void vhost_dev_reset_owner(struct vhost_dev *dev, struct vhost_umem *umem)
{
 int i;

 vhost_dev_cleanup(dev);


 INIT_LIST_HEAD(&umem->umem_list);
 dev->umem = umem;



 for (i = 0; i < dev->nvqs; ++i)
  dev->vqs[i]->umem = umem;
}
