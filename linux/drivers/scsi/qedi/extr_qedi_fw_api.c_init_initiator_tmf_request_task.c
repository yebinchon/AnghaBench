
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tmf_request_hdr {int dummy; } ;
struct iscsi_task_params {int dummy; } ;
struct iscsi_common_hdr {int dummy; } ;
struct data_hdr {int dummy; } ;


 int ISCSI_TASK_TYPE_MIDPATH ;
 int init_default_iscsi_task (struct iscsi_task_params*,struct data_hdr*,int ) ;
 int init_sqe (struct iscsi_task_params*,int *,int *,struct iscsi_common_hdr*,int *,int ,int) ;

int init_initiator_tmf_request_task(struct iscsi_task_params *task_params,
        struct iscsi_tmf_request_hdr *tmf_header)
{
 init_default_iscsi_task(task_params, (struct data_hdr *)tmf_header,
    ISCSI_TASK_TYPE_MIDPATH);

 init_sqe(task_params, ((void*)0), ((void*)0),
   (struct iscsi_common_hdr *)tmf_header, ((void*)0),
   ISCSI_TASK_TYPE_MIDPATH, 0);

 return 0;
}
