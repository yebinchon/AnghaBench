
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct gb_cap {int dummy; } ;
struct file {struct gb_cap* private_data; } ;


 int put_cap (struct gb_cap*) ;

__attribute__((used)) static int cap_release(struct inode *inode, struct file *file)
{
 struct gb_cap *cap = file->private_data;

 put_cap(cap);
 return 0;
}
