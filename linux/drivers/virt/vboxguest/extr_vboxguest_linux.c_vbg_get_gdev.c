
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbg_dev {int dummy; } ;


 int ENODEV ;
 struct vbg_dev* ERR_PTR (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vbg_dev* vbg_gdev ;
 int vbg_gdev_mutex ;

struct vbg_dev *vbg_get_gdev(void)
{
 mutex_lock(&vbg_gdev_mutex);






 if (vbg_gdev)
  return vbg_gdev;

 mutex_unlock(&vbg_gdev_mutex);
 return ERR_PTR(-ENODEV);
}
