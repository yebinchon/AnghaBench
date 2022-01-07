
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct smb_vol {int max_credits; int persistent; } ;
struct TYPE_10__ {int DeviceCharacteristics; } ;
struct TYPE_9__ {int Capability; } ;
struct cifs_tcon {int max_credits; TYPE_5__* ops; TYPE_4__ fsDevInfo; int pipe; scalar_t__ unix_ext; TYPE_3__ fsUnixInfo; TYPE_6__* ses; scalar_t__ posix_extensions; TYPE_1__* server; } ;
struct cifs_ses {int max_credits; TYPE_5__* ops; TYPE_4__ fsDevInfo; int pipe; scalar_t__ unix_ext; TYPE_3__ fsUnixInfo; TYPE_6__* ses; scalar_t__ posix_extensions; TYPE_1__* server; } ;
struct cifs_sb_info {int mnt_cifs_flags; int rsize; int wsize; } ;
struct TCP_Server_Info {int max_credits; TYPE_5__* ops; TYPE_4__ fsDevInfo; int pipe; scalar_t__ unix_ext; TYPE_3__ fsUnixInfo; TYPE_6__* ses; scalar_t__ posix_extensions; TYPE_1__* server; } ;
struct TYPE_12__ {TYPE_2__* server; } ;
struct TYPE_11__ {int (* negotiate_rsize ) (struct cifs_tcon*,struct smb_vol*) ;int (* negotiate_wsize ) (struct cifs_tcon*,struct smb_vol*) ;int (* qfs_tcon ) (unsigned int,struct cifs_tcon*) ;} ;
struct TYPE_8__ {scalar_t__ tcpStatus; } ;
struct TYPE_7__ {int capabilities; } ;


 int CIFS_MOUNT_POSIX_PATHS ;
 int CIFS_MOUNT_RO_CACHE ;
 int CIFS_MOUNT_RW_CACHE ;
 int CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP ;
 scalar_t__ CifsNeedReconnect ;
 int EACCES ;
 int EOPNOTSUPP ;
 int FILE_READ_ONLY_DEVICE ;
 scalar_t__ IS_ERR (struct cifs_tcon*) ;
 int PTR_ERR (struct cifs_tcon*) ;
 int SMB2_GLOBAL_CAP_PERSISTENT_HANDLES ;
 int SMB2_MAX_CREDITS_AVAILABLE ;
 int VFS ;
 scalar_t__ cap_unix (TYPE_6__*) ;
 int cifs_dbg (int ,char*) ;
 struct cifs_tcon* cifs_get_smb_ses (struct cifs_tcon*,struct smb_vol*) ;
 struct cifs_tcon* cifs_get_tcon (struct cifs_tcon*,struct smb_vol*) ;
 struct cifs_tcon* cifs_get_tcp_session (struct smb_vol*) ;
 int cifs_server_dbg (int ,char*) ;
 int cpu_to_le32 (int ) ;
 unsigned int get_xid () ;
 int le64_to_cpu (int ) ;
 int reset_cifs_unix_caps (unsigned int,struct cifs_tcon*,struct cifs_sb_info*,struct smb_vol*) ;
 int stub1 (unsigned int,struct cifs_tcon*) ;
 int stub2 (struct cifs_tcon*,struct smb_vol*) ;
 int stub3 (struct cifs_tcon*,struct smb_vol*) ;

__attribute__((used)) static int mount_get_conns(struct smb_vol *vol, struct cifs_sb_info *cifs_sb,
      unsigned int *xid,
      struct TCP_Server_Info **nserver,
      struct cifs_ses **nses, struct cifs_tcon **ntcon)
{
 int rc = 0;
 struct TCP_Server_Info *server;
 struct cifs_ses *ses;
 struct cifs_tcon *tcon;

 *nserver = ((void*)0);
 *nses = ((void*)0);
 *ntcon = ((void*)0);

 *xid = get_xid();


 server = cifs_get_tcp_session(vol);
 if (IS_ERR(server)) {
  rc = PTR_ERR(server);
  return rc;
 }

 *nserver = server;

 if ((vol->max_credits < 20) || (vol->max_credits > 60000))
  server->max_credits = SMB2_MAX_CREDITS_AVAILABLE;
 else
  server->max_credits = vol->max_credits;


 ses = cifs_get_smb_ses(server, vol);
 if (IS_ERR(ses)) {
  rc = PTR_ERR(ses);
  return rc;
 }

 *nses = ses;

 if ((vol->persistent == 1) && (!(ses->server->capabilities &
         SMB2_GLOBAL_CAP_PERSISTENT_HANDLES))) {
  cifs_server_dbg(VFS, "persistent handles not supported by server\n");
  return -EOPNOTSUPP;
 }


 tcon = cifs_get_tcon(ses, vol);
 if (IS_ERR(tcon)) {
  rc = PTR_ERR(tcon);
  return rc;
 }

 *ntcon = tcon;


 if (tcon->posix_extensions)
  cifs_sb->mnt_cifs_flags |= CIFS_MOUNT_POSIX_PATHS;


 if (cap_unix(tcon->ses)) {




  reset_cifs_unix_caps(*xid, tcon, cifs_sb, vol);
  if ((tcon->ses->server->tcpStatus == CifsNeedReconnect) &&
      (le64_to_cpu(tcon->fsUnixInfo.Capability) &
       CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP))
   return -EACCES;
 } else
  tcon->unix_ext = 0;


 if (!tcon->pipe && server->ops->qfs_tcon) {
  server->ops->qfs_tcon(*xid, tcon);
  if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_RO_CACHE) {
   if (tcon->fsDevInfo.DeviceCharacteristics &
       cpu_to_le32(FILE_READ_ONLY_DEVICE))
    cifs_dbg(VFS, "mounted to read only share\n");
   else if ((cifs_sb->mnt_cifs_flags &
      CIFS_MOUNT_RW_CACHE) == 0)
    cifs_dbg(VFS, "read only mount of RW share\n");

  }
 }

 cifs_sb->wsize = server->ops->negotiate_wsize(tcon, vol);
 cifs_sb->rsize = server->ops->negotiate_rsize(tcon, vol);

 return 0;
}
