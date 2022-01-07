
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct cros_ec_debugfs* private_data; } ;
struct TYPE_2__ {int tail; int head; } ;
struct cros_ec_debugfs {int log_mutex; TYPE_1__ log_buffer; int log_wq; } ;
typedef int poll_table ;
typedef int __poll_t ;


 scalar_t__ CIRC_CNT (int ,int ,int ) ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 int LOG_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t cros_ec_console_log_poll(struct file *file,
          poll_table *wait)
{
 struct cros_ec_debugfs *debug_info = file->private_data;
 __poll_t mask = 0;

 poll_wait(file, &debug_info->log_wq, wait);

 mutex_lock(&debug_info->log_mutex);
 if (CIRC_CNT(debug_info->log_buffer.head,
       debug_info->log_buffer.tail,
       LOG_SIZE))
  mask |= EPOLLIN | EPOLLRDNORM;
 mutex_unlock(&debug_info->log_mutex);

 return mask;
}
