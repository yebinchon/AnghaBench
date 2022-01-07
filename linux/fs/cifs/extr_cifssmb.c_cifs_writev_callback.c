
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mid_q_entry {int mid_state; scalar_t__ resp_buf; struct cifs_writedata* callback_data; } ;
struct cifs_writedata {unsigned int bytes; int work; int result; TYPE_1__* cfile; } ;
struct cifs_tcon {TYPE_2__* ses; } ;
struct cifs_credits {int value; int instance; } ;
struct TYPE_6__ {int Count; int CountHigh; } ;
typedef TYPE_3__ WRITE_RSP ;
struct TYPE_5__ {int server; } ;
struct TYPE_4__ {int tlink; } ;


 int DeleteMidQEntry (struct mid_q_entry*) ;
 int EAGAIN ;
 int EIO ;
 int ENOSPC ;



 int add_credits (int ,struct cifs_credits*,int ) ;
 int cifs_check_receive (struct mid_q_entry*,int ,int ) ;
 int cifsiod_wq ;
 unsigned int le16_to_cpu (int ) ;
 int queue_work (int ,int *) ;
 struct cifs_tcon* tlink_tcon (int ) ;

__attribute__((used)) static void
cifs_writev_callback(struct mid_q_entry *mid)
{
 struct cifs_writedata *wdata = mid->callback_data;
 struct cifs_tcon *tcon = tlink_tcon(wdata->cfile->tlink);
 unsigned int written;
 WRITE_RSP *smb = (WRITE_RSP *)mid->resp_buf;
 struct cifs_credits credits = { .value = 1, .instance = 0 };

 switch (mid->mid_state) {
 case 129:
  wdata->result = cifs_check_receive(mid, tcon->ses->server, 0);
  if (wdata->result != 0)
   break;

  written = le16_to_cpu(smb->CountHigh);
  written <<= 16;
  written += le16_to_cpu(smb->Count);






  if (written > wdata->bytes)
   written &= 0xFFFF;

  if (written < wdata->bytes)
   wdata->result = -ENOSPC;
  else
   wdata->bytes = written;
  break;
 case 130:
 case 128:
  wdata->result = -EAGAIN;
  break;
 default:
  wdata->result = -EIO;
  break;
 }

 queue_work(cifsiod_wq, &wdata->work);
 DeleteMidQEntry(mid);
 add_credits(tcon->ses->server, &credits, 0);
}
