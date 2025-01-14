
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vhost_scsi_target {int vhost_wwpn; } ;
struct TYPE_3__ {int vqs; int mutex; } ;
struct vhost_scsi {TYPE_1__ dev; int vs_vhost_wwpn; } ;
struct inode {int dummy; } ;
struct file {struct vhost_scsi* private_data; } ;


 int kfree (int ) ;
 int kvfree (struct vhost_scsi*) ;
 int memcpy (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vhost_dev_cleanup (TYPE_1__*) ;
 int vhost_dev_stop (TYPE_1__*) ;
 int vhost_scsi_clear_endpoint (struct vhost_scsi*,struct vhost_scsi_target*) ;
 int vhost_scsi_flush (struct vhost_scsi*) ;

__attribute__((used)) static int vhost_scsi_release(struct inode *inode, struct file *f)
{
 struct vhost_scsi *vs = f->private_data;
 struct vhost_scsi_target t;

 mutex_lock(&vs->dev.mutex);
 memcpy(t.vhost_wwpn, vs->vs_vhost_wwpn, sizeof(t.vhost_wwpn));
 mutex_unlock(&vs->dev.mutex);
 vhost_scsi_clear_endpoint(vs, &t);
 vhost_dev_stop(&vs->dev);
 vhost_dev_cleanup(&vs->dev);

 vhost_scsi_flush(vs);
 kfree(vs->dev.vqs);
 kvfree(vs);
 return 0;
}
