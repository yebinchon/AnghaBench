
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_control {int dummy; } ;
struct ucsi {int dummy; } ;


 int UCSI_CMD_SET_NTFY_ENABLE (struct ucsi_control,int ) ;
 int UCSI_ENABLE_NTFY_ALL ;
 int ucsi_send_command (struct ucsi*,struct ucsi_control*,int *,int ) ;

int ucsi_resume(struct ucsi *ucsi)
{
 struct ucsi_control ctrl;


 UCSI_CMD_SET_NTFY_ENABLE(ctrl, UCSI_ENABLE_NTFY_ALL);
 return ucsi_send_command(ucsi, &ctrl, ((void*)0), 0);
}
