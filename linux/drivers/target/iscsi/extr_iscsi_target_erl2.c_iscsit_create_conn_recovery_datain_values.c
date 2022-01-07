
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct iscsi_conn {TYPE_3__* sess; TYPE_1__* conn_ops; } ;
struct iscsi_cmd {scalar_t__ next_burst_len; scalar_t__ read_data_done; struct iscsi_conn* conn; } ;
typedef int __be32 ;
struct TYPE_6__ {TYPE_2__* sess_ops; } ;
struct TYPE_5__ {scalar_t__ MaxBurstLength; } ;
struct TYPE_4__ {scalar_t__ MaxRecvDataSegmentLength; } ;


 scalar_t__ be32_to_cpu (int ) ;

void iscsit_create_conn_recovery_datain_values(
 struct iscsi_cmd *cmd,
 __be32 exp_data_sn)
{
 u32 data_sn = 0;
 struct iscsi_conn *conn = cmd->conn;

 cmd->next_burst_len = 0;
 cmd->read_data_done = 0;

 while (be32_to_cpu(exp_data_sn) > data_sn) {
  if ((cmd->next_burst_len +
       conn->conn_ops->MaxRecvDataSegmentLength) <
       conn->sess->sess_ops->MaxBurstLength) {
   cmd->read_data_done +=
          conn->conn_ops->MaxRecvDataSegmentLength;
   cmd->next_burst_len +=
          conn->conn_ops->MaxRecvDataSegmentLength;
  } else {
   cmd->read_data_done +=
    (conn->sess->sess_ops->MaxBurstLength -
    cmd->next_burst_len);
   cmd->next_burst_len = 0;
  }
  data_sn++;
 }
}
