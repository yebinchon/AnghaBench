
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_sgl_task_params {int total_buffer_size; } ;
struct iscsi_text_request_hdr {int dummy; } ;
struct iscsi_task_params {scalar_t__ tx_io_size; scalar_t__ rx_io_size; struct e4_iscsi_task_context* context; } ;
struct iscsi_common_hdr {int dummy; } ;
struct TYPE_6__ {int rem_task_size; int data_desc; int sgl_params; } ;
struct TYPE_4__ {int data_desc; int sgl_params; } ;
struct TYPE_5__ {TYPE_1__ state; } ;
struct e4_iscsi_task_context {int ustorm_ag_context; int ustorm_st_context; TYPE_3__ mstorm_st_context; TYPE_2__ ystorm_st_context; } ;
struct data_hdr {int dummy; } ;


 int ISCSI_TASK_TYPE_MIDPATH ;
 int cpu_to_le32 (int ) ;
 int init_default_iscsi_task (struct iscsi_task_params*,struct data_hdr*,int ) ;
 int init_scsi_sgl_context (int *,int *,struct scsi_sgl_task_params*) ;
 int init_sqe (struct iscsi_task_params*,struct scsi_sgl_task_params*,int *,struct iscsi_common_hdr*,int *,int ,int) ;
 int init_ustorm_task_contexts (int *,int *,int ,int ,int ,int ) ;

int init_initiator_text_request_task(struct iscsi_task_params *task_params,
         struct iscsi_text_request_hdr *text_header,
         struct scsi_sgl_task_params *tx_params,
         struct scsi_sgl_task_params *rx_params)
{
 struct e4_iscsi_task_context *cxt;

 cxt = task_params->context;

 init_default_iscsi_task(task_params,
    (struct data_hdr *)text_header,
    ISCSI_TASK_TYPE_MIDPATH);

 if (task_params->tx_io_size)
  init_scsi_sgl_context(&cxt->ystorm_st_context.state.sgl_params,
          &cxt->ystorm_st_context.state.data_desc,
          tx_params);

 if (task_params->rx_io_size)
  init_scsi_sgl_context(&cxt->mstorm_st_context.sgl_params,
          &cxt->mstorm_st_context.data_desc,
          rx_params);

 cxt->mstorm_st_context.rem_task_size =
    cpu_to_le32(task_params->rx_io_size ?
     rx_params->total_buffer_size : 0);

 init_ustorm_task_contexts(&cxt->ustorm_st_context,
      &cxt->ustorm_ag_context,
      task_params->rx_io_size ?
      rx_params->total_buffer_size : 0,
      task_params->tx_io_size ?
      tx_params->total_buffer_size : 0, 0, 0);

 init_sqe(task_params, tx_params, ((void*)0),
   (struct iscsi_common_hdr *)text_header, ((void*)0),
   ISCSI_TASK_TYPE_MIDPATH, 0);

 return 0;
}
