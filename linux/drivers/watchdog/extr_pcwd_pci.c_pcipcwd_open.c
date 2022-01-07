
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 scalar_t__ VERBOSE ;
 scalar_t__ debug ;
 int is_active ;
 int pcipcwd_keepalive () ;
 int pcipcwd_start () ;
 int pr_err (char*) ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int pcipcwd_open(struct inode *inode, struct file *file)
{

 if (test_and_set_bit(0, &is_active)) {
  if (debug >= VERBOSE)
   pr_err("Attempt to open already opened device\n");
  return -EBUSY;
 }


 pcipcwd_start();
 pcipcwd_keepalive();
 return stream_open(inode, file);
}
