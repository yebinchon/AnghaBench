
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct kvec {int iov_base; int iov_len; } ;
struct cifs_ses {int dummy; } ;


 int CIFS_MAX_IOV_SIZE ;
 int CIFS_NO_BUFFER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cifs_send_recv (unsigned int const,struct cifs_ses*,struct smb_rqst*,int*,int const,struct kvec*) ;
 int kfree (struct kvec*) ;
 struct kvec* kmalloc_array (int,int,int ) ;
 int memcpy (struct kvec*,struct kvec*,int) ;
 int memset (struct smb_rqst*,int ,int) ;

int
SendReceive2(const unsigned int xid, struct cifs_ses *ses,
      struct kvec *iov, int n_vec, int *resp_buf_type ,
      const int flags, struct kvec *resp_iov)
{
 struct smb_rqst rqst;
 struct kvec s_iov[CIFS_MAX_IOV_SIZE], *new_iov;
 int rc;

 if (n_vec + 1 > CIFS_MAX_IOV_SIZE) {
  new_iov = kmalloc_array(n_vec + 1, sizeof(struct kvec),
     GFP_KERNEL);
  if (!new_iov) {

   *resp_buf_type = CIFS_NO_BUFFER;
   return -ENOMEM;
  }
 } else
  new_iov = s_iov;


 memcpy(new_iov + 1, iov, (sizeof(struct kvec) * n_vec));

 new_iov[0].iov_base = new_iov[1].iov_base;
 new_iov[0].iov_len = 4;
 new_iov[1].iov_base += 4;
 new_iov[1].iov_len -= 4;

 memset(&rqst, 0, sizeof(struct smb_rqst));
 rqst.rq_iov = new_iov;
 rqst.rq_nvec = n_vec + 1;

 rc = cifs_send_recv(xid, ses, &rqst, resp_buf_type, flags, resp_iov);
 if (n_vec + 1 > CIFS_MAX_IOV_SIZE)
  kfree(new_iov);
 return rc;
}
