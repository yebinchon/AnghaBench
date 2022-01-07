
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_dev {int num; } ;


 int* bus ;
 int bus_num ;
 int vme_bus_num (struct vme_dev*) ;
 int vme_slot_num (struct vme_dev*) ;

__attribute__((used)) static int vme_user_match(struct vme_dev *vdev)
{
 int i;

 int cur_bus = vme_bus_num(vdev);
 int cur_slot = vme_slot_num(vdev);

 for (i = 0; i < bus_num; i++)
  if ((cur_bus == bus[i]) && (cur_slot == vdev->num))
   return 1;

 return 0;
}
