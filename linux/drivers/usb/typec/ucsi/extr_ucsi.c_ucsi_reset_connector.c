
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_control {int dummy; } ;
struct ucsi_connector {int ucsi; } ;


 int UCSI_CMD_CONNECTOR_RESET (struct ucsi_control,struct ucsi_connector*,int) ;
 int ucsi_send_command (int ,struct ucsi_control*,int *,int ) ;

__attribute__((used)) static int ucsi_reset_connector(struct ucsi_connector *con, bool hard)
{
 struct ucsi_control ctrl;

 UCSI_CMD_CONNECTOR_RESET(ctrl, con, hard);

 return ucsi_send_command(con->ucsi, &ctrl, ((void*)0), 0);
}
