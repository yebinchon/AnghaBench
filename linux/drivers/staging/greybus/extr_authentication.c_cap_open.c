
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_cdev; } ;
struct gb_cap {int dummy; } ;
struct file {struct gb_cap* private_data; } ;


 int ENODEV ;
 struct gb_cap* get_cap (int ) ;

__attribute__((used)) static int cap_open(struct inode *inode, struct file *file)
{
 struct gb_cap *cap = get_cap(inode->i_cdev);


 if (cap) {
  file->private_data = cap;
  return 0;
 }

 return -ENODEV;
}
