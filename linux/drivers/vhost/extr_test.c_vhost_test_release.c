
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_test {int dev; } ;
struct inode {int dummy; } ;
struct file {struct vhost_test* private_data; } ;


 int kfree (struct vhost_test*) ;
 int vhost_dev_cleanup (int *) ;
 int vhost_dev_stop (int *) ;
 int vhost_test_flush (struct vhost_test*) ;
 int vhost_test_stop (struct vhost_test*,void**) ;

__attribute__((used)) static int vhost_test_release(struct inode *inode, struct file *f)
{
 struct vhost_test *n = f->private_data;
 void *private;

 vhost_test_stop(n, &private);
 vhost_test_flush(n);
 vhost_dev_stop(&n->dev);
 vhost_dev_cleanup(&n->dev);


 vhost_test_flush(n);
 kfree(n);
 return 0;
}
