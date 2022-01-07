
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct telem_session_data {TYPE_1__* dev_data; } ;
struct inode {int dummy; } ;
struct file {struct telem_session_data* private_data; } ;
struct TYPE_2__ {int dev; int available; } ;


 int atomic_set (int *,int) ;
 int kfree (struct telem_session_data*) ;
 int put_device (int *) ;

__attribute__((used)) static int telem_release(struct inode *inode, struct file *filp)
{
 struct telem_session_data *sess_data = filp->private_data;

 atomic_set(&sess_data->dev_data->available, 1);
 put_device(&sess_data->dev_data->dev);
 kfree(sess_data);

 return 0;
}
