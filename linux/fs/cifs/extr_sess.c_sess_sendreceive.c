
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct smb_hdr {int smb_buf_length; } ;
struct sess_data {TYPE_1__* iov; int buf0_type; int ses; int xid; } ;
struct kvec {int member_1; int * member_0; } ;
typedef scalar_t__ __u16 ;
struct TYPE_3__ {scalar_t__ iov_base; scalar_t__ iov_len; } ;


 int CIFS_LOG_ERROR ;
 int SendReceive2 (int ,int ,TYPE_1__*,int,int *,int ,struct kvec*) ;
 scalar_t__ be32_to_cpu (int ) ;
 int cifs_small_buf_release (scalar_t__) ;
 int cpu_to_be32 (scalar_t__) ;
 int memcpy (TYPE_1__*,struct kvec*,int) ;
 int put_bcc (scalar_t__,struct smb_hdr*) ;

__attribute__((used)) static int
sess_sendreceive(struct sess_data *sess_data)
{
 int rc;
 struct smb_hdr *smb_buf = (struct smb_hdr *) sess_data->iov[0].iov_base;
 __u16 count;
 struct kvec rsp_iov = { ((void*)0), 0 };

 count = sess_data->iov[1].iov_len + sess_data->iov[2].iov_len;
 smb_buf->smb_buf_length =
  cpu_to_be32(be32_to_cpu(smb_buf->smb_buf_length) + count);
 put_bcc(count, smb_buf);

 rc = SendReceive2(sess_data->xid, sess_data->ses,
     sess_data->iov, 3 ,
     &sess_data->buf0_type,
     CIFS_LOG_ERROR, &rsp_iov);
 cifs_small_buf_release(sess_data->iov[0].iov_base);
 memcpy(&sess_data->iov[0], &rsp_iov, sizeof(struct kvec));

 return rc;
}
