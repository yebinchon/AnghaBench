
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u8 ;
struct utp_upiu_query {int dummy; } ;
struct ufs_hba {int dev; } ;
struct TYPE_3__ {struct utp_upiu_query qr; } ;
struct ufs_bsg_request {TYPE_1__ upiu_req; } ;
struct TYPE_4__ {int payload_len; int sg_cnt; int sg_list; } ;
struct bsg_job {TYPE_2__ request_payload; struct ufs_bsg_request* request; } ;
typedef enum query_opcode { ____Placeholder_query_opcode } query_opcode ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int UPIU_QUERY_OPCODE_READ_DESC ;
 int UPIU_QUERY_OPCODE_WRITE_DESC ;
 int dev_err (int ,char*) ;
 int * kzalloc (int,int ) ;
 int sg_copy_to_buffer (int ,int ,int *,int) ;
 scalar_t__ ufs_bsg_get_query_desc_size (struct ufs_hba*,int*,struct utp_upiu_query*) ;

__attribute__((used)) static int ufs_bsg_alloc_desc_buffer(struct ufs_hba *hba, struct bsg_job *job,
         uint8_t **desc_buff, int *desc_len,
         enum query_opcode desc_op)
{
 struct ufs_bsg_request *bsg_request = job->request;
 struct utp_upiu_query *qr;
 u8 *descp;

 if (desc_op != UPIU_QUERY_OPCODE_WRITE_DESC &&
     desc_op != UPIU_QUERY_OPCODE_READ_DESC)
  goto out;

 qr = &bsg_request->upiu_req.qr;
 if (ufs_bsg_get_query_desc_size(hba, desc_len, qr)) {
  dev_err(hba->dev, "Illegal desc size\n");
  return -EINVAL;
 }

 if (*desc_len > job->request_payload.payload_len) {
  dev_err(hba->dev, "Illegal desc size\n");
  return -EINVAL;
 }

 descp = kzalloc(*desc_len, GFP_KERNEL);
 if (!descp)
  return -ENOMEM;

 if (desc_op == UPIU_QUERY_OPCODE_WRITE_DESC)
  sg_copy_to_buffer(job->request_payload.sg_list,
      job->request_payload.sg_cnt, descp,
      *desc_len);

 *desc_buff = descp;

out:
 return 0;
}
