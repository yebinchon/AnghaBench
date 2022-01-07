
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int container_users; } ;
struct device {int dummy; } ;


 int atomic_read (int *) ;
 int vfio_dev_viable (struct device*,struct vfio_group*) ;

__attribute__((used)) static int vfio_group_nb_verify(struct vfio_group *group, struct device *dev)
{

 if (!atomic_read(&group->container_users))
  return 0;

 return vfio_dev_viable(dev, group);
}
