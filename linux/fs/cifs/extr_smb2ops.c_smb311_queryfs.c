
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kstatfs {int f_type; } ;
struct cifs_tcon {int posix_extensions; } ;
struct cifs_open_parms {int reconnect; struct cifs_fid* fid; scalar_t__ create_options; int disposition; int desired_access; struct cifs_tcon* tcon; } ;
struct cifs_fid {int volatile_fid; int persistent_fid; } ;
typedef int __le16 ;


 int FILE_OPEN ;
 int FILE_READ_ATTRIBUTES ;
 int SMB2_MAGIC_NUMBER ;
 int SMB2_OPLOCK_LEVEL_NONE ;
 int SMB2_close (unsigned int const,struct cifs_tcon*,int ,int ) ;
 int SMB2_open (unsigned int const,struct cifs_open_parms*,int *,int *,int *,int *,int *) ;
 int SMB311_posix_qfs_info (unsigned int const,struct cifs_tcon*,int ,int ,struct kstatfs*) ;
 int smb2_queryfs (unsigned int const,struct cifs_tcon*,struct kstatfs*) ;

__attribute__((used)) static int
smb311_queryfs(const unsigned int xid, struct cifs_tcon *tcon,
      struct kstatfs *buf)
{
 int rc;
 __le16 srch_path = 0;
 u8 oplock = SMB2_OPLOCK_LEVEL_NONE;
 struct cifs_open_parms oparms;
 struct cifs_fid fid;

 if (!tcon->posix_extensions)
  return smb2_queryfs(xid, tcon, buf);

 oparms.tcon = tcon;
 oparms.desired_access = FILE_READ_ATTRIBUTES;
 oparms.disposition = FILE_OPEN;
 oparms.create_options = 0;
 oparms.fid = &fid;
 oparms.reconnect = 0;

 rc = SMB2_open(xid, &oparms, &srch_path, &oplock, ((void*)0), ((void*)0), ((void*)0));
 if (rc)
  return rc;

 rc = SMB311_posix_qfs_info(xid, tcon, fid.persistent_fid,
       fid.volatile_fid, buf);
 buf->f_type = SMB2_MAGIC_NUMBER;
 SMB2_close(xid, tcon, fid.persistent_fid, fid.volatile_fid);
 return rc;
}
