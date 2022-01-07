
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group_put_work {int work; struct vfio_group* group; } ;
struct vfio_group {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ WARN_ON (int) ;
 struct vfio_group_put_work* kmalloc (int,int ) ;
 int schedule_work (int *) ;
 int vfio_group_put_bg ;

__attribute__((used)) static void vfio_group_schedule_put(struct vfio_group *group)
{
 struct vfio_group_put_work *do_work;

 do_work = kmalloc(sizeof(*do_work), GFP_KERNEL);
 if (WARN_ON(!do_work))
  return;

 INIT_WORK(&do_work->work, vfio_group_put_bg);
 do_work->group = group;
 schedule_work(&do_work->work);
}
