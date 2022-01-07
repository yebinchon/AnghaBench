
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_host {int host_lock; TYPE_1__* ops; } ;
struct soc_camera_device {struct file* streamer; int parent; } ;
struct file {struct soc_camera_device* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int (* poll ) (struct file*,int *) ;} ;


 int EPOLLERR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct file*,int *) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static __poll_t soc_camera_poll(struct file *file, poll_table *pt)
{
 struct soc_camera_device *icd = file->private_data;
 struct soc_camera_host *ici = to_soc_camera_host(icd->parent);
 __poll_t res = EPOLLERR;

 if (icd->streamer != file)
  return EPOLLERR;

 mutex_lock(&ici->host_lock);
 res = ici->ops->poll(file, pt);
 mutex_unlock(&ici->host_lock);
 return res;
}
