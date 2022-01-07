
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int CreditRequest; } ;
struct smb2_write_rsp {TYPE_1__ sync_hdr; int DataLength; } ;
struct mid_q_entry {int mid_state; scalar_t__ resp_buf; struct cifs_writedata* callback_data; } ;
struct cifs_writedata {scalar_t__ result; unsigned int bytes; int work; int offset; TYPE_3__* cfile; int * mr; } ;
struct cifs_tcon {TYPE_4__* ses; int tid; } ;
struct cifs_credits {int instance; void* value; } ;
struct TCP_Server_Info {int reconnect_instance; } ;
struct TYPE_8__ {int Suid; struct TCP_Server_Info* server; } ;
struct TYPE_6__ {int persistent_fid; } ;
struct TYPE_7__ {TYPE_2__ fid; int tlink; } ;


 int DeleteMidQEntry (struct mid_q_entry*) ;
 scalar_t__ EAGAIN ;
 scalar_t__ EIO ;
 scalar_t__ ENOSPC ;




 int SMB2_WRITE_HE ;
 int add_credits (struct TCP_Server_Info*,struct cifs_credits*,int ) ;
 int cifs_stats_fail_inc (struct cifs_tcon*,int ) ;
 int cifsiod_wq ;
 void* le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;
 int queue_work (int ,int *) ;
 scalar_t__ smb2_check_receive (struct mid_q_entry*,struct TCP_Server_Info*,int ) ;
 int smbd_deregister_mr (int *) ;
 struct cifs_tcon* tlink_tcon (int ) ;
 int trace_smb3_write_done (int ,int ,int ,int ,int ,unsigned int) ;
 int trace_smb3_write_err (int ,int ,int ,int ,int ,unsigned int,scalar_t__) ;

__attribute__((used)) static void
smb2_writev_callback(struct mid_q_entry *mid)
{
 struct cifs_writedata *wdata = mid->callback_data;
 struct cifs_tcon *tcon = tlink_tcon(wdata->cfile->tlink);
 struct TCP_Server_Info *server = tcon->ses->server;
 unsigned int written;
 struct smb2_write_rsp *rsp = (struct smb2_write_rsp *)mid->resp_buf;
 struct cifs_credits credits = { .value = 0, .instance = 0 };

 switch (mid->mid_state) {
 case 129:
  credits.value = le16_to_cpu(rsp->sync_hdr.CreditRequest);
  credits.instance = server->reconnect_instance;
  wdata->result = smb2_check_receive(mid, server, 0);
  if (wdata->result != 0)
   break;

  written = le32_to_cpu(rsp->DataLength);






  if (written > wdata->bytes)
   written &= 0xFFFF;

  if (written < wdata->bytes)
   wdata->result = -ENOSPC;
  else
   wdata->bytes = written;
  break;
 case 131:
 case 128:
  wdata->result = -EAGAIN;
  break;
 case 130:
  credits.value = le16_to_cpu(rsp->sync_hdr.CreditRequest);
  credits.instance = server->reconnect_instance;

 default:
  wdata->result = -EIO;
  break;
 }
 if (wdata->result) {
  cifs_stats_fail_inc(tcon, SMB2_WRITE_HE);
  trace_smb3_write_err(0 ,
         wdata->cfile->fid.persistent_fid,
         tcon->tid, tcon->ses->Suid, wdata->offset,
         wdata->bytes, wdata->result);
 } else
  trace_smb3_write_done(0 ,
          wdata->cfile->fid.persistent_fid,
          tcon->tid, tcon->ses->Suid,
          wdata->offset, wdata->bytes);

 queue_work(cifsiod_wq, &wdata->work);
 DeleteMidQEntry(mid);
 add_credits(server, &credits, 0);
}
