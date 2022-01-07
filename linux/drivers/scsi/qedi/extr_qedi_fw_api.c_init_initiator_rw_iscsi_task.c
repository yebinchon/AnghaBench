
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sgl_task_params {int dummy; } ;
struct scsi_initiator_cmd_params {int dummy; } ;
struct scsi_dif_task_params {int dummy; } ;
struct iscsi_task_params {scalar_t__ rx_io_size; scalar_t__ tx_io_size; } ;
struct iscsi_conn_params {int dummy; } ;
struct iscsi_common_hdr {int dummy; } ;
struct iscsi_cmd_hdr {int flags_attr; } ;


 scalar_t__ GET_FIELD (int ,int ) ;
 int ISCSI_CMD_HDR_READ ;
 int ISCSI_CMD_HDR_WRITE ;
 int ISCSI_TASK_TYPE_INITIATOR_READ ;
 int ISCSI_TASK_TYPE_INITIATOR_WRITE ;
 int init_rw_iscsi_task (struct iscsi_task_params*,int ,struct iscsi_conn_params*,struct iscsi_common_hdr*,struct scsi_sgl_task_params*,struct scsi_initiator_cmd_params*,struct scsi_dif_task_params*) ;

int init_initiator_rw_iscsi_task(struct iscsi_task_params *task_params,
     struct iscsi_conn_params *conn_params,
     struct scsi_initiator_cmd_params *cmd_params,
     struct iscsi_cmd_hdr *cmd_header,
     struct scsi_sgl_task_params *tx_sgl_params,
     struct scsi_sgl_task_params *rx_sgl_params,
     struct scsi_dif_task_params *dif_task_params)
{
 if (GET_FIELD(cmd_header->flags_attr, ISCSI_CMD_HDR_WRITE))
  return init_rw_iscsi_task(task_params,
       ISCSI_TASK_TYPE_INITIATOR_WRITE,
       conn_params,
       (struct iscsi_common_hdr *)cmd_header,
       tx_sgl_params, cmd_params,
       dif_task_params);
 else if (GET_FIELD(cmd_header->flags_attr, ISCSI_CMD_HDR_READ) ||
   (task_params->rx_io_size == 0 && task_params->tx_io_size == 0))
  return init_rw_iscsi_task(task_params,
       ISCSI_TASK_TYPE_INITIATOR_READ,
       conn_params,
       (struct iscsi_common_hdr *)cmd_header,
       rx_sgl_params, cmd_params,
       dif_task_params);
 else
  return -1;
}
