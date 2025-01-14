
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb2_sync_hdr {scalar_t__ Command; scalar_t__ Status; int TreeId; int SessionId; } ;
struct smb2_create_rsp {int VolatileFileId; int PersistentFileId; } ;
struct TYPE_2__ {int volatile_fid; int persistent_fid; } ;
struct close_cancelled_open {int work; struct cifs_tcon* tcon; TYPE_1__ fid; } ;
struct cifs_tcon {int dummy; } ;
struct TCP_Server_Info {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ SMB2_CREATE ;
 scalar_t__ STATUS_SUCCESS ;
 int cifsiod_wq ;
 int kfree (struct close_cancelled_open*) ;
 struct close_cancelled_open* kzalloc (int,int ) ;
 int queue_work (int ,int *) ;
 int smb2_cancelled_close_fid ;
 struct cifs_tcon* smb2_find_smb_tcon (struct TCP_Server_Info*,int ,int ) ;

int
smb2_handle_cancelled_mid(char *buffer, struct TCP_Server_Info *server)
{
 struct smb2_sync_hdr *sync_hdr = (struct smb2_sync_hdr *)buffer;
 struct smb2_create_rsp *rsp = (struct smb2_create_rsp *)buffer;
 struct cifs_tcon *tcon;
 struct close_cancelled_open *cancelled;

 if (sync_hdr->Command != SMB2_CREATE ||
     sync_hdr->Status != STATUS_SUCCESS)
  return 0;

 cancelled = kzalloc(sizeof(*cancelled), GFP_KERNEL);
 if (!cancelled)
  return -ENOMEM;

 tcon = smb2_find_smb_tcon(server, sync_hdr->SessionId,
      sync_hdr->TreeId);
 if (!tcon) {
  kfree(cancelled);
  return -ENOENT;
 }

 cancelled->fid.persistent_fid = rsp->PersistentFileId;
 cancelled->fid.volatile_fid = rsp->VolatileFileId;
 cancelled->tcon = tcon;
 INIT_WORK(&cancelled->work, smb2_cancelled_close_fid);
 queue_work(cifsiod_wq, &cancelled->work);

 return 0;
}
