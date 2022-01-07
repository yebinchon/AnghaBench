
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int dummy; } ;
typedef int loff_t ;
struct TYPE_4__ {int i_rdev; } ;
struct TYPE_3__ {int mutex; int resource; } ;


 int EINVAL ;

 unsigned int MINOR (int ) ;

 TYPE_2__* file_inode (struct file*) ;
 int fixed_size_llseek (struct file*,int ,int,size_t) ;
 TYPE_1__* image ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* type ;
 size_t vme_get_size (int ) ;

__attribute__((used)) static loff_t vme_user_llseek(struct file *file, loff_t off, int whence)
{
 unsigned int minor = MINOR(file_inode(file)->i_rdev);
 size_t image_size;
 loff_t res;

 switch (type[minor]) {
 case 129:
 case 128:
  mutex_lock(&image[minor].mutex);
  image_size = vme_get_size(image[minor].resource);
  res = fixed_size_llseek(file, off, whence, image_size);
  mutex_unlock(&image[minor].mutex);
  return res;
 }

 return -EINVAL;
}
