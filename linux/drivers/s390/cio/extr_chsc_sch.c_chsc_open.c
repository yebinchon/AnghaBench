
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int chsc_ready_for_use ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int chsc_open(struct inode *inode, struct file *file)
{
 if (!atomic_dec_and_test(&chsc_ready_for_use)) {
  atomic_inc(&chsc_ready_for_use);
  return -EBUSY;
 }
 return nonseekable_open(inode, file);
}
