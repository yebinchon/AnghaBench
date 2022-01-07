
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct inode {int i_private; } ;
struct file {struct seq_file* private_data; } ;


 int format1_seq_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int table_open1(struct inode *inode, struct file *file)
{
 struct seq_file *seq;
 int ret;

 ret = seq_open(file, &format1_seq_ops);
 if (ret)
  return ret;

 seq = file->private_data;
 seq->private = inode->i_private;
 return 0;
}
