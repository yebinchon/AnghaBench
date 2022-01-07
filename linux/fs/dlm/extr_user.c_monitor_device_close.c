
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int dlm_monitor_opened ;
 int dlm_stop_lockspaces () ;

__attribute__((used)) static int monitor_device_close(struct inode *inode, struct file *file)
{
 if (atomic_dec_and_test(&dlm_monitor_opened))
  dlm_stop_lockspaces();
 return 0;
}
