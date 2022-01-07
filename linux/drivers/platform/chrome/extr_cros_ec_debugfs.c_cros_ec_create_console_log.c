
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ec_params_console_read_v1 {int dummy; } ;
struct cros_ec_dev {scalar_t__ cmd_offset; int dev; TYPE_1__* ec_dev; } ;
struct TYPE_6__ {char* buf; scalar_t__ tail; scalar_t__ head; } ;
struct cros_ec_debugfs {int log_poll_work; int dir; int log_wq; int log_mutex; TYPE_3__ log_buffer; TYPE_2__* read_msg; struct cros_ec_dev* ec; } ;
struct TYPE_5__ {int version; int outsize; int insize; scalar_t__ command; } ;
struct TYPE_4__ {int max_response; } ;


 scalar_t__ EC_CMD_CONSOLE_READ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ LOG_SIZE ;
 int S_IFREG ;
 int cros_ec_console_log_fops ;
 int cros_ec_console_log_work ;
 int debugfs_create_file (char*,int,int ,struct cros_ec_debugfs*,int *) ;
 void* devm_kzalloc (int ,scalar_t__,int ) ;
 int ec_read_version_supported (struct cros_ec_dev*) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ max (int,int) ;
 int mutex_init (int *) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int cros_ec_create_console_log(struct cros_ec_debugfs *debug_info)
{
 struct cros_ec_dev *ec = debug_info->ec;
 char *buf;
 int read_params_size;
 int read_response_size;





 if (!ec_read_version_supported(ec))
  return 0;

 buf = devm_kzalloc(ec->dev, LOG_SIZE, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 read_params_size = sizeof(struct ec_params_console_read_v1);
 read_response_size = ec->ec_dev->max_response;
 debug_info->read_msg = devm_kzalloc(ec->dev,
  sizeof(*debug_info->read_msg) +
   max(read_params_size, read_response_size), GFP_KERNEL);
 if (!debug_info->read_msg)
  return -ENOMEM;

 debug_info->read_msg->version = 1;
 debug_info->read_msg->command = EC_CMD_CONSOLE_READ + ec->cmd_offset;
 debug_info->read_msg->outsize = read_params_size;
 debug_info->read_msg->insize = read_response_size;

 debug_info->log_buffer.buf = buf;
 debug_info->log_buffer.head = 0;
 debug_info->log_buffer.tail = 0;

 mutex_init(&debug_info->log_mutex);
 init_waitqueue_head(&debug_info->log_wq);

 debugfs_create_file("console_log", S_IFREG | 0444, debug_info->dir,
       debug_info, &cros_ec_console_log_fops);

 INIT_DELAYED_WORK(&debug_info->log_poll_work,
     cros_ec_console_log_work);
 schedule_delayed_work(&debug_info->log_poll_work, 0);

 return 0;
}
