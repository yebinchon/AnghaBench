
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_datain_req {int dummy; } ;
struct iscsi_datain {int dummy; } ;
struct iscsi_conn {TYPE_2__* sess; } ;
struct iscsi_cmd {struct iscsi_conn* conn; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {scalar_t__ DataPDUInOrder; scalar_t__ DataSequenceInOrder; } ;


 struct iscsi_datain_req* iscsit_set_datain_values_no_and_no (struct iscsi_cmd*,struct iscsi_datain*) ;
 struct iscsi_datain_req* iscsit_set_datain_values_no_and_yes (struct iscsi_cmd*,struct iscsi_datain*) ;
 struct iscsi_datain_req* iscsit_set_datain_values_yes_and_no (struct iscsi_cmd*,struct iscsi_datain*) ;
 struct iscsi_datain_req* iscsit_set_datain_values_yes_and_yes (struct iscsi_cmd*,struct iscsi_datain*) ;

struct iscsi_datain_req *iscsit_get_datain_values(
 struct iscsi_cmd *cmd,
 struct iscsi_datain *datain)
{
 struct iscsi_conn *conn = cmd->conn;

 if (conn->sess->sess_ops->DataSequenceInOrder &&
     conn->sess->sess_ops->DataPDUInOrder)
  return iscsit_set_datain_values_yes_and_yes(cmd, datain);
 else if (!conn->sess->sess_ops->DataSequenceInOrder &&
    conn->sess->sess_ops->DataPDUInOrder)
  return iscsit_set_datain_values_no_and_yes(cmd, datain);
 else if (conn->sess->sess_ops->DataSequenceInOrder &&
   !conn->sess->sess_ops->DataPDUInOrder)
  return iscsit_set_datain_values_yes_and_no(cmd, datain);
 else if (!conn->sess->sess_ops->DataSequenceInOrder &&
     !conn->sess->sess_ops->DataPDUInOrder)
  return iscsit_set_datain_values_no_and_no(cmd, datain);

 return ((void*)0);
}
