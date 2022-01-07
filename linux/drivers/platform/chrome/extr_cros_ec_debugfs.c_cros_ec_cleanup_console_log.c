
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ buf; } ;
struct cros_ec_debugfs {int log_mutex; int log_poll_work; TYPE_1__ log_buffer; } ;


 int cancel_delayed_work_sync (int *) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void cros_ec_cleanup_console_log(struct cros_ec_debugfs *debug_info)
{
 if (debug_info->log_buffer.buf) {
  cancel_delayed_work_sync(&debug_info->log_poll_work);
  mutex_destroy(&debug_info->log_mutex);
 }
}
