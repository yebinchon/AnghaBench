
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scsi_sgl_task_params {int total_buffer_size; } ;
struct scsi_dif_task_params {int dif_on_network; } ;
struct iscsi_task_params {int rx_io_size; int tx_io_size; } ;
typedef enum iscsi_task_type { ____Placeholder_iscsi_task_type } iscsi_task_type ;


 int ISCSI_TASK_TYPE_INITIATOR_WRITE ;
 int ISCSI_TASK_TYPE_TARGET_READ ;

__attribute__((used)) static u32 calc_rw_task_size(struct iscsi_task_params *task_params,
        enum iscsi_task_type task_type,
        struct scsi_sgl_task_params *sgl_task_params,
        struct scsi_dif_task_params *dif_task_params)
{
 u32 io_size;

 if (task_type == ISCSI_TASK_TYPE_INITIATOR_WRITE ||
     task_type == ISCSI_TASK_TYPE_TARGET_READ)
  io_size = task_params->tx_io_size;
 else
  io_size = task_params->rx_io_size;

 if (!io_size)
  return 0;

 if (!dif_task_params)
  return io_size;

 return !dif_task_params->dif_on_network ?
        io_size : sgl_task_params->total_buffer_size;
}
