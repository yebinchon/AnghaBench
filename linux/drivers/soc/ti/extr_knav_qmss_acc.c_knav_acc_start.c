
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knav_reg_acc_command {int command; } ;
struct TYPE_2__ {int pdsp; } ;
struct knav_range_info {TYPE_1__ acc_info; struct knav_acc_channel* acc; } ;
struct knav_device {int dev; } ;
struct knav_acc_channel {int name; } ;
typedef enum knav_acc_result { ____Placeholder_knav_acc_result } knav_acc_result ;


 int ACC_CMD_ENABLE_CHANNEL ;
 int dev_dbg (int ,char*,int ,int ) ;
 int knav_acc_result_str (int) ;
 int knav_acc_setup_cmd (struct knav_device*,struct knav_range_info*,struct knav_reg_acc_command*,int) ;
 int knav_acc_write (struct knav_device*,int ,struct knav_reg_acc_command*) ;

__attribute__((used)) static enum knav_acc_result knav_acc_start(struct knav_device *kdev,
      struct knav_range_info *range,
      int queue)
{
 struct knav_reg_acc_command cmd;
 struct knav_acc_channel *acc;
 enum knav_acc_result result;

 acc = range->acc + queue;

 knav_acc_setup_cmd(kdev, range, &cmd, queue);
 cmd.command |= ACC_CMD_ENABLE_CHANNEL << 8;
 result = knav_acc_write(kdev, range->acc_info.pdsp, &cmd);

 dev_dbg(kdev->dev, "started acc channel %s, result %s\n",
  acc->name, knav_acc_result_str(result));

 return result;
}
