
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dev; } ;
struct ufs_bsg_request {int dummy; } ;
struct ufs_bsg_reply {int dummy; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int ufs_bsg_verify_query_size(struct ufs_hba *hba,
         unsigned int request_len,
         unsigned int reply_len)
{
 int min_req_len = sizeof(struct ufs_bsg_request);
 int min_rsp_len = sizeof(struct ufs_bsg_reply);

 if (min_req_len > request_len || min_rsp_len > reply_len) {
  dev_err(hba->dev, "not enough space assigned\n");
  return -EINVAL;
 }

 return 0;
}
