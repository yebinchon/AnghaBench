
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int global_driver ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uctrl_get_event_status (int ) ;
 int uctrl_get_external_status (int ) ;
 int uctrl_mutex ;

__attribute__((used)) static int
uctrl_open(struct inode *inode, struct file *file)
{
 mutex_lock(&uctrl_mutex);
 uctrl_get_event_status(global_driver);
 uctrl_get_external_status(global_driver);
 mutex_unlock(&uctrl_mutex);
 return 0;
}
