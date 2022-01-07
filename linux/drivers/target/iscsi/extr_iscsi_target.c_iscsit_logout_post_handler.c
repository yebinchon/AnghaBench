
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int cid; } ;
struct iscsi_cmd {int logout_reason; int logout_response; int logout_cid; } ;
 int iscsit_logout_post_handler_closesession (struct iscsi_conn*) ;
 int iscsit_logout_post_handler_diffcid (struct iscsi_conn*,int ) ;
 int iscsit_logout_post_handler_samecid (struct iscsi_conn*) ;

int iscsit_logout_post_handler(
 struct iscsi_cmd *cmd,
 struct iscsi_conn *conn)
{
 int ret = 0;

 switch (cmd->logout_reason) {
 case 131:
  switch (cmd->logout_response) {
  case 128:
  case 133:
  default:
   iscsit_logout_post_handler_closesession(conn);
   break;
  }
  ret = 0;
  break;
 case 132:
  if (conn->cid == cmd->logout_cid) {
   switch (cmd->logout_response) {
   case 128:
   case 133:
   default:
    iscsit_logout_post_handler_samecid(conn);
    break;
   }
   ret = 0;
  } else {
   switch (cmd->logout_response) {
   case 128:
    iscsit_logout_post_handler_diffcid(conn,
     cmd->logout_cid);
    break;
   case 134:
   case 133:
   default:
    break;
   }
   ret = 1;
  }
  break;
 case 130:
  switch (cmd->logout_response) {
  case 128:
  case 134:
  case 129:
  case 133:
  default:
   break;
  }
  ret = 1;
  break;
 default:
  break;

 }
 return ret;
}
