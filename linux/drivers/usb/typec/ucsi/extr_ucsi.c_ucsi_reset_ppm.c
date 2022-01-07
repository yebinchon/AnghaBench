
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cmd; } ;
struct ucsi_control {TYPE_1__ cmd; scalar_t__ raw_cmd; } ;
struct ucsi {TYPE_4__* ppm; int dev; } ;
struct TYPE_9__ {int (* cmd ) (TYPE_4__*,struct ucsi_control*) ;TYPE_3__* data; } ;
struct TYPE_7__ {scalar_t__ reset_complete; } ;
struct TYPE_8__ {scalar_t__ raw_cci; TYPE_2__ cci; } ;


 int ETIMEDOUT ;
 int UCSI_PPM_RESET ;
 int UCSI_TIMEOUT_MS ;
 int dev_warn_ratelimited (int ,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int) ;
 int stub1 (TYPE_4__*,struct ucsi_control*) ;
 int stub2 (TYPE_4__*,struct ucsi_control*) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;
 int trace_ucsi_command (struct ucsi_control*) ;
 int trace_ucsi_reset_ppm (struct ucsi_control*,int) ;
 int ucsi_sync (struct ucsi*) ;

__attribute__((used)) static int ucsi_reset_ppm(struct ucsi *ucsi)
{
 struct ucsi_control ctrl;
 unsigned long tmo;
 int ret;

 ctrl.raw_cmd = 0;
 ctrl.cmd.cmd = UCSI_PPM_RESET;
 trace_ucsi_command(&ctrl);
 ret = ucsi->ppm->cmd(ucsi->ppm, &ctrl);
 if (ret)
  goto err;

 tmo = jiffies + msecs_to_jiffies(UCSI_TIMEOUT_MS);

 do {

  ret = ucsi_sync(ucsi);
  if (ret)
   goto err;

  if (ucsi->ppm->data->cci.reset_complete)
   break;


  if (ucsi->ppm->data->raw_cci) {
   dev_warn_ratelimited(ucsi->dev,
    "Failed to reset PPM! Trying again..\n");

   trace_ucsi_command(&ctrl);
   ret = ucsi->ppm->cmd(ucsi->ppm, &ctrl);
   if (ret)
    goto err;
  }


  msleep(20);

  ret = -ETIMEDOUT;
 } while (time_is_after_jiffies(tmo));

err:
 trace_ucsi_reset_ppm(&ctrl, ret);

 return ret;
}
