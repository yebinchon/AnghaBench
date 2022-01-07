
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct iscsi_conn {TYPE_2__* sess; } ;
struct iscsi_cmd {scalar_t__ write_data_done; scalar_t__ next_burst_len; scalar_t__ data_sn; struct iscsi_conn* conn; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {scalar_t__ MaxBurstLength; } ;



void iscsit_create_conn_recovery_dataout_values(
 struct iscsi_cmd *cmd)
{
 u32 write_data_done = 0;
 struct iscsi_conn *conn = cmd->conn;

 cmd->data_sn = 0;
 cmd->next_burst_len = 0;

 while (cmd->write_data_done > write_data_done) {
  if ((write_data_done + conn->sess->sess_ops->MaxBurstLength) <=
       cmd->write_data_done)
   write_data_done += conn->sess->sess_ops->MaxBurstLength;
  else
   break;
 }

 cmd->write_data_done = write_data_done;
}
