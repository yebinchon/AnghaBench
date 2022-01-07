
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_rqst {size_t rq_nvec; TYPE_1__* rq_iov; } ;
struct smb2_sync_hdr {int NextCommand; } ;
struct cifs_tcon {struct cifs_ses* ses; } ;
struct cifs_ses {struct TCP_Server_Info* server; } ;
struct TCP_Server_Info {int dummy; } ;
struct TYPE_2__ {int iov_len; scalar_t__ iov_base; } ;


 int FYI ;
 int cifs_dbg (int ,char*) ;
 int cpu_to_le32 (unsigned long) ;
 int memcpy (int ,scalar_t__,int) ;
 int memset (int ,int ,int) ;
 scalar_t__ smb2_padding ;
 int smb3_encryption_required (struct cifs_tcon*) ;
 unsigned long smb_rqst_len (struct TCP_Server_Info*,struct smb_rqst*) ;

void
smb2_set_next_command(struct cifs_tcon *tcon, struct smb_rqst *rqst)
{
 struct smb2_sync_hdr *shdr;
 struct cifs_ses *ses = tcon->ses;
 struct TCP_Server_Info *server = ses->server;
 unsigned long len = smb_rqst_len(server, rqst);
 int i, num_padding;

 shdr = (struct smb2_sync_hdr *)(rqst->rq_iov[0].iov_base);
 if (shdr == ((void*)0)) {
  cifs_dbg(FYI, "shdr NULL in smb2_set_next_command\n");
  return;
 }




 if (!(len & 7))
  goto finished;

 num_padding = 8 - (len & 7);
 if (!smb3_encryption_required(tcon)) {




  rqst->rq_iov[rqst->rq_nvec].iov_base = smb2_padding;
  rqst->rq_iov[rqst->rq_nvec].iov_len = num_padding;
  rqst->rq_nvec++;
  len += num_padding;
 } else {







  for (i = 1; i < rqst->rq_nvec; i++) {
   memcpy(rqst->rq_iov[0].iov_base +
          rqst->rq_iov[0].iov_len,
          rqst->rq_iov[i].iov_base,
          rqst->rq_iov[i].iov_len);
   rqst->rq_iov[0].iov_len += rqst->rq_iov[i].iov_len;
  }
  memset(rqst->rq_iov[0].iov_base + rqst->rq_iov[0].iov_len,
         0, num_padding);
  rqst->rq_iov[0].iov_len += num_padding;
  len += num_padding;
  rqst->rq_nvec = 1;
 }

 finished:
 shdr->NextCommand = cpu_to_le32(len);
}
