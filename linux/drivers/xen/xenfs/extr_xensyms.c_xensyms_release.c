
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xensyms {int name; } ;
struct seq_file {scalar_t__ private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int kfree (int ) ;
 int seq_release_private (struct inode*,struct file*) ;

__attribute__((used)) static int xensyms_release(struct inode *inode, struct file *file)
{
 struct seq_file *m = file->private_data;
 struct xensyms *xs = (struct xensyms *)m->private;

 kfree(xs->name);
 return seq_release_private(inode, file);
}
