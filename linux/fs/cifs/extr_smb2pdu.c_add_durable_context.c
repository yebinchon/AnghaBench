
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_create_req {int CreateContextsLength; scalar_t__ CreateContextsOffset; } ;
struct kvec {int iov_len; struct smb2_create_req* iov_base; } ;
struct create_durable {int dummy; } ;
struct cifs_open_parms {int reconnect; int fid; } ;


 int ENOMEM ;
 int add_durable_reconnect_v2_context (struct kvec*,unsigned int*,struct cifs_open_parms*) ;
 int add_durable_v2_context (struct kvec*,unsigned int*,struct cifs_open_parms*) ;
 scalar_t__ cpu_to_le32 (int) ;
 struct smb2_create_req* create_durable_buf () ;
 struct smb2_create_req* create_reconnect_durable_buf (int ) ;
 int le32_add_cpu (int *,int) ;

__attribute__((used)) static int
add_durable_context(struct kvec *iov, unsigned int *num_iovec,
      struct cifs_open_parms *oparms, bool use_persistent)
{
 struct smb2_create_req *req = iov[0].iov_base;
 unsigned int num = *num_iovec;

 if (use_persistent) {
  if (oparms->reconnect)
   return add_durable_reconnect_v2_context(iov, num_iovec,
        oparms);
  else
   return add_durable_v2_context(iov, num_iovec, oparms);
 }

 if (oparms->reconnect) {
  iov[num].iov_base = create_reconnect_durable_buf(oparms->fid);

  oparms->reconnect = 0;
 } else
  iov[num].iov_base = create_durable_buf();
 if (iov[num].iov_base == ((void*)0))
  return -ENOMEM;
 iov[num].iov_len = sizeof(struct create_durable);
 if (!req->CreateContextsOffset)
  req->CreateContextsOffset =
   cpu_to_le32(sizeof(struct smb2_create_req) +
        iov[1].iov_len);
 le32_add_cpu(&req->CreateContextsLength, sizeof(struct create_durable));
 *num_iovec = num + 1;
 return 0;
}
