
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req_que {scalar_t__ num_outstanding_cmds; void* outstanding_cmds; } ;
struct qla_hw_data {scalar_t__ cur_fw_xcb_count; scalar_t__ cur_fw_iocb_count; } ;
typedef int srb_t ;


 scalar_t__ DEFAULT_OUTSTANDING_COMMANDS ;
 int GFP_KERNEL ;
 int IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 scalar_t__ MIN_OUTSTANDING_COMMANDS ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 void* kcalloc (scalar_t__,int,int ) ;
 int ql_log (int ,int *,int,char*,struct req_que*) ;
 int ql_log_fatal ;

int
qla2x00_alloc_outstanding_cmds(struct qla_hw_data *ha, struct req_que *req)
{

 if (req->outstanding_cmds)
  return QLA_SUCCESS;

 if (!IS_FWI2_CAPABLE(ha))
  req->num_outstanding_cmds = DEFAULT_OUTSTANDING_COMMANDS;
 else {
  if (ha->cur_fw_xcb_count <= ha->cur_fw_iocb_count)
   req->num_outstanding_cmds = ha->cur_fw_xcb_count;
  else
   req->num_outstanding_cmds = ha->cur_fw_iocb_count;
 }

 req->outstanding_cmds = kcalloc(req->num_outstanding_cmds,
     sizeof(srb_t *),
     GFP_KERNEL);

 if (!req->outstanding_cmds) {




  req->num_outstanding_cmds = MIN_OUTSTANDING_COMMANDS;
  req->outstanding_cmds = kcalloc(req->num_outstanding_cmds,
      sizeof(srb_t *),
      GFP_KERNEL);

  if (!req->outstanding_cmds) {
   ql_log(ql_log_fatal, ((void*)0), 0x0126,
       "Failed to allocate memory for "
       "outstanding_cmds for req_que %p.\n", req);
   req->num_outstanding_cmds = 0;
   return QLA_FUNCTION_FAILED;
  }
 }

 return QLA_SUCCESS;
}
