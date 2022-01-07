
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ucsi_control {int dummy; } ;
struct ucsi_connector {TYPE_1__* ucsi; } ;
struct TYPE_3__ {int ppm_lock; } ;


 int ETIMEDOUT ;
 int UCSI_CMD_SET_NTFY_ENABLE (struct ucsi_control,int ) ;
 int UCSI_ENABLE_NTFY_ALL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ucsi_reset_connector (struct ucsi_connector*,int) ;
 int ucsi_reset_ppm (TYPE_1__*) ;
 int ucsi_send_command (TYPE_1__*,struct ucsi_control*,int *,int ) ;

__attribute__((used)) static int ucsi_role_cmd(struct ucsi_connector *con, struct ucsi_control *ctrl)
{
 int ret;

 ret = ucsi_send_command(con->ucsi, ctrl, ((void*)0), 0);
 if (ret == -ETIMEDOUT) {
  struct ucsi_control c;


  mutex_lock(&con->ucsi->ppm_lock);
  ucsi_reset_ppm(con->ucsi);
  mutex_unlock(&con->ucsi->ppm_lock);

  UCSI_CMD_SET_NTFY_ENABLE(c, UCSI_ENABLE_NTFY_ALL);
  ucsi_send_command(con->ucsi, &c, ((void*)0), 0);

  ucsi_reset_connector(con, 1);
 }

 return ret;
}
