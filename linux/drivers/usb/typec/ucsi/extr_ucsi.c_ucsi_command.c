
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucsi_control {int dummy; } ;
struct ucsi {int flags; int dev; int complete; TYPE_1__* ppm; } ;
struct TYPE_2__ {int (* cmd ) (TYPE_1__*,struct ucsi_control*) ;} ;


 int COMMAND_PENDING ;
 int ETIMEDOUT ;
 int UCSI_TIMEOUT_MS ;
 int clear_bit (int ,int *) ;
 int dev_warn (int ,char*) ;
 int msecs_to_jiffies (int ) ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_1__*,struct ucsi_control*) ;
 int trace_ucsi_command (struct ucsi_control*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int ucsi_command(struct ucsi *ucsi, struct ucsi_control *ctrl)
{
 int ret;

 trace_ucsi_command(ctrl);

 set_bit(COMMAND_PENDING, &ucsi->flags);

 ret = ucsi->ppm->cmd(ucsi->ppm, ctrl);
 if (ret)
  goto err_clear_flag;

 if (!wait_for_completion_timeout(&ucsi->complete,
      msecs_to_jiffies(UCSI_TIMEOUT_MS))) {
  dev_warn(ucsi->dev, "PPM NOT RESPONDING\n");
  ret = -ETIMEDOUT;
 }

err_clear_flag:
 clear_bit(COMMAND_PENDING, &ucsi->flags);

 return ret;
}
