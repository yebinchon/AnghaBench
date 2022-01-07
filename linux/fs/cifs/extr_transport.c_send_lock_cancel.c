
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smb_hdr {int dummy; } ;
struct cifs_tcon {struct cifs_ses* ses; } ;
struct cifs_ses {int server; } ;
struct TYPE_3__ {int Mid; } ;
struct TYPE_4__ {int LockType; TYPE_1__ hdr; scalar_t__ Timeout; } ;
typedef TYPE_2__ LOCK_REQ ;


 int LOCKING_ANDX_CANCEL_LOCK ;
 int LOCKING_ANDX_LARGE_FILES ;
 int SendReceive (unsigned int const,struct cifs_ses*,struct smb_hdr*,struct smb_hdr*,int*,int ) ;
 int get_next_mid (int ) ;

__attribute__((used)) static int
send_lock_cancel(const unsigned int xid, struct cifs_tcon *tcon,
   struct smb_hdr *in_buf,
   struct smb_hdr *out_buf)
{
 int bytes_returned;
 struct cifs_ses *ses = tcon->ses;
 LOCK_REQ *pSMB = (LOCK_REQ *)in_buf;






 pSMB->LockType = LOCKING_ANDX_CANCEL_LOCK|LOCKING_ANDX_LARGE_FILES;
 pSMB->Timeout = 0;
 pSMB->hdr.Mid = get_next_mid(ses->server);

 return SendReceive(xid, ses, in_buf, out_buf,
   &bytes_returned, 0);
}
