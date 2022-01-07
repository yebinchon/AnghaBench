
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rqst {int dummy; } ;
struct kvec {int dummy; } ;
struct cifs_ses {int dummy; } ;


 int compound_send_recv (unsigned int const,struct cifs_ses*,int const,int,struct smb_rqst*,int*,struct kvec*) ;

int
cifs_send_recv(const unsigned int xid, struct cifs_ses *ses,
        struct smb_rqst *rqst, int *resp_buf_type, const int flags,
        struct kvec *resp_iov)
{
 return compound_send_recv(xid, ses, flags, 1, rqst, resp_buf_type,
      resp_iov);
}
