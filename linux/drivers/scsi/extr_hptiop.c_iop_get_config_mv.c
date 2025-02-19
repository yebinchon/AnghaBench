
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct hpt_iop_request_get_config* internal_req; } ;
struct TYPE_6__ {TYPE_2__ mv; } ;
struct hptiop_hba {TYPE_3__ u; } ;
struct TYPE_4__ {scalar_t__ context_hi32; void* context; void* result; void* size; void* type; void* flags; } ;
struct hpt_iop_request_get_config {TYPE_1__ header; } ;


 int IOP_REQUEST_FLAG_OUTPUT_CONTEXT ;
 int IOP_REQUEST_TYPE_GET_CONFIG ;
 int IOP_RESULT_PENDING ;
 void* cpu_to_le32 (int) ;
 int dprintk (char*) ;
 scalar_t__ iop_send_sync_request_mv (struct hptiop_hba*,int ,int) ;
 int memcpy (struct hpt_iop_request_get_config*,struct hpt_iop_request_get_config*,int) ;

__attribute__((used)) static int iop_get_config_mv(struct hptiop_hba *hba,
    struct hpt_iop_request_get_config *config)
{
 struct hpt_iop_request_get_config *req = hba->u.mv.internal_req;

 req->header.flags = cpu_to_le32(IOP_REQUEST_FLAG_OUTPUT_CONTEXT);
 req->header.type = cpu_to_le32(IOP_REQUEST_TYPE_GET_CONFIG);
 req->header.size =
  cpu_to_le32(sizeof(struct hpt_iop_request_get_config));
 req->header.result = cpu_to_le32(IOP_RESULT_PENDING);
 req->header.context = cpu_to_le32(IOP_REQUEST_TYPE_GET_CONFIG<<5);
 req->header.context_hi32 = 0;

 if (iop_send_sync_request_mv(hba, 0, 20000)) {
  dprintk("Get config send cmd failed\n");
  return -1;
 }

 memcpy(config, req, sizeof(struct hpt_iop_request_get_config));
 return 0;
}
