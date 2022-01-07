
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_host {TYPE_1__* ops; } ;
struct soc_camera_device {int * user_formats; scalar_t__ num_user_formats; int * current_fmt; int parent; } ;
struct TYPE_2__ {int (* put_formats ) (struct soc_camera_device*) ;} ;


 int stub1 (struct soc_camera_device*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;
 int vfree (int *) ;

__attribute__((used)) static void soc_camera_free_user_formats(struct soc_camera_device *icd)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->parent);

 if (ici->ops->put_formats)
  ici->ops->put_formats(icd);
 icd->current_fmt = ((void*)0);
 icd->num_user_formats = 0;
 vfree(icd->user_formats);
 icd->user_formats = ((void*)0);
}
