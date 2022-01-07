
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int atomic_inc (int *) ;
 int dlm_monitor_opened ;
 scalar_t__ dlm_monitor_unused ;

__attribute__((used)) static int monitor_device_open(struct inode *inode, struct file *file)
{
 atomic_inc(&dlm_monitor_opened);
 dlm_monitor_unused = 0;
 return 0;
}
