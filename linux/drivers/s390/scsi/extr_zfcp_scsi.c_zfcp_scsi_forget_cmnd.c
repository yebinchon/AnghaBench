
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_scsi_req_filter {scalar_t__ port_handle; scalar_t__ tmf_scope; scalar_t__ lun_handle; } ;
struct zfcp_fsf_req {int * data; TYPE_2__* qtcb; } ;
struct scsi_cmnd {int dummy; } ;
struct TYPE_3__ {scalar_t__ fsf_command; scalar_t__ port_handle; scalar_t__ lun_handle; } ;
struct TYPE_4__ {TYPE_1__ header; } ;


 scalar_t__ FCP_TMF_LUN_RESET ;
 scalar_t__ FSF_QTCB_FCP_CMND ;
 int zfcp_dbf_scsi_nullcmnd (struct scsi_cmnd*,struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_fsf_req_is_status_read_buffer (struct zfcp_fsf_req*) ;

__attribute__((used)) static void zfcp_scsi_forget_cmnd(struct zfcp_fsf_req *old_req, void *data)
{
 struct zfcp_scsi_req_filter *filter =
  (struct zfcp_scsi_req_filter *)data;


 if (old_req->data == ((void*)0) ||
     zfcp_fsf_req_is_status_read_buffer(old_req) ||
     old_req->qtcb->header.fsf_command != FSF_QTCB_FCP_CMND)
  return;


 if (old_req->qtcb->header.port_handle != filter->port_handle)
  return;

 if (filter->tmf_scope == FCP_TMF_LUN_RESET &&
     old_req->qtcb->header.lun_handle != filter->lun_handle)
  return;

 zfcp_dbf_scsi_nullcmnd((struct scsi_cmnd *)old_req->data, old_req);
 old_req->data = ((void*)0);
}
