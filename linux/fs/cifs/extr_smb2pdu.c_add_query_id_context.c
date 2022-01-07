
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_create_req {int CreateContextsLength; scalar_t__ CreateContextsOffset; } ;
struct kvec {int iov_len; struct smb2_create_req* iov_base; } ;
struct crt_query_id_ctxt {int dummy; } ;


 int ENOMEM ;
 scalar_t__ cpu_to_le32 (int) ;
 struct smb2_create_req* create_query_id_buf () ;
 int le32_add_cpu (int *,int) ;

__attribute__((used)) static int
add_query_id_context(struct kvec *iov, unsigned int *num_iovec)
{
 struct smb2_create_req *req = iov[0].iov_base;
 unsigned int num = *num_iovec;

 iov[num].iov_base = create_query_id_buf();
 if (iov[num].iov_base == ((void*)0))
  return -ENOMEM;
 iov[num].iov_len = sizeof(struct crt_query_id_ctxt);
 if (!req->CreateContextsOffset)
  req->CreateContextsOffset = cpu_to_le32(
    sizeof(struct smb2_create_req) +
    iov[num - 1].iov_len);
 le32_add_cpu(&req->CreateContextsLength, sizeof(struct crt_query_id_ctxt));
 *num_iovec = num + 1;
 return 0;
}
