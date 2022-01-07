
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_cdev; } ;
struct file {int dummy; } ;
struct comp_channel {int io_mutex; scalar_t__ dev; int unlink; scalar_t__ access_ref; } ;


 int destroy_channel (struct comp_channel*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stop_channel (struct comp_channel*) ;
 struct comp_channel* to_channel (int ) ;

__attribute__((used)) static int comp_close(struct inode *inode, struct file *filp)
{
 struct comp_channel *c = to_channel(inode->i_cdev);

 mutex_lock(&c->io_mutex);
 spin_lock(&c->unlink);
 c->access_ref = 0;
 spin_unlock(&c->unlink);
 if (c->dev) {
  stop_channel(c);
  mutex_unlock(&c->io_mutex);
 } else {
  mutex_unlock(&c->io_mutex);
  destroy_channel(c);
 }
 return 0;
}
