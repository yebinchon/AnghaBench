
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct privcmd_data {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct privcmd_data* private_data; } ;


 int kfree (struct privcmd_data*) ;

__attribute__((used)) static int privcmd_release(struct inode *ino, struct file *file)
{
 struct privcmd_data *data = file->private_data;

 kfree(data);
 return 0;
}
