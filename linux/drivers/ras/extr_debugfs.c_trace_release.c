
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int atomic_dec (int *) ;
 int single_release (struct inode*,struct file*) ;
 int trace_count ;

__attribute__((used)) static int trace_release(struct inode *inode, struct file *file)
{
 atomic_dec(&trace_count);
 return single_release(inode, file);
}
