
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int seq_open (struct file*,int *) ;
 int snic_trc_seq_ops ;

__attribute__((used)) static int
snic_trc_open(struct inode *inode, struct file *filp)
{
 return seq_open(filp, &snic_trc_seq_ops);
}
