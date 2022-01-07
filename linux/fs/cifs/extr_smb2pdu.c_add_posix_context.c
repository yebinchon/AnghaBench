
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ umode_t ;
struct smb2_create_req {int CreateContextsLength; scalar_t__ CreateContextsOffset; } ;
struct kvec {int iov_len; struct smb2_create_req* iov_base; } ;
struct create_posix {int dummy; } ;


 scalar_t__ ACL_NO_MODE ;
 int ENOMEM ;
 int FYI ;
 int cifs_dbg (int ,char*) ;
 scalar_t__ cpu_to_le32 (int) ;
 struct smb2_create_req* create_posix_buf (scalar_t__) ;
 int le32_add_cpu (int *,int) ;

__attribute__((used)) static int
add_posix_context(struct kvec *iov, unsigned int *num_iovec, umode_t mode)
{
 struct smb2_create_req *req = iov[0].iov_base;
 unsigned int num = *num_iovec;

 iov[num].iov_base = create_posix_buf(mode);
 if (mode == ACL_NO_MODE)
  cifs_dbg(FYI, "illegal mode\n");
 if (iov[num].iov_base == ((void*)0))
  return -ENOMEM;
 iov[num].iov_len = sizeof(struct create_posix);
 if (!req->CreateContextsOffset)
  req->CreateContextsOffset = cpu_to_le32(
    sizeof(struct smb2_create_req) +
    iov[num - 1].iov_len);
 le32_add_cpu(&req->CreateContextsLength, sizeof(struct create_posix));
 *num_iovec = num + 1;
 return 0;
}
