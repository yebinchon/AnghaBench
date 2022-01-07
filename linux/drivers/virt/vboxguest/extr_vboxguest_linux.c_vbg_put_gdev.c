
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbg_dev {int dummy; } ;


 int WARN_ON (int) ;
 int mutex_unlock (int *) ;
 struct vbg_dev* vbg_gdev ;
 int vbg_gdev_mutex ;

void vbg_put_gdev(struct vbg_dev *gdev)
{
 WARN_ON(gdev != vbg_gdev);
 mutex_unlock(&vbg_gdev_mutex);
}
