
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cifs_tcon {int nohandlecache; int crfid; } ;
struct cifs_open_parms {int reconnect; struct cifs_fid* fid; scalar_t__ create_options; int disposition; int desired_access; struct cifs_tcon* tcon; } ;
struct cifs_fid {int volatile_fid; int persistent_fid; } ;
typedef int __le16 ;


 int FILE_OPEN ;
 int FILE_READ_ATTRIBUTES ;
 int FS_ATTRIBUTE_INFORMATION ;
 int FS_DEVICE_INFORMATION ;
 int FS_SECTOR_SIZE_INFORMATION ;
 int FS_VOLUME_INFORMATION ;
 int SMB2_OPLOCK_LEVEL_NONE ;
 int SMB2_QFS_attr (unsigned int const,struct cifs_tcon*,int ,int ,int ) ;
 int SMB2_close (unsigned int const,struct cifs_tcon*,int ,int ) ;
 int SMB2_open (unsigned int const,struct cifs_open_parms*,int *,int *,int *,int *,int *) ;
 int SMB3_request_interfaces (unsigned int const,struct cifs_tcon*) ;
 int close_shroot (int *) ;
 int open_shroot (unsigned int const,struct cifs_tcon*,struct cifs_fid*) ;

__attribute__((used)) static void
smb3_qfs_tcon(const unsigned int xid, struct cifs_tcon *tcon)
{
 int rc;
 __le16 srch_path = 0;
 u8 oplock = SMB2_OPLOCK_LEVEL_NONE;
 struct cifs_open_parms oparms;
 struct cifs_fid fid;
 bool no_cached_open = tcon->nohandlecache;

 oparms.tcon = tcon;
 oparms.desired_access = FILE_READ_ATTRIBUTES;
 oparms.disposition = FILE_OPEN;
 oparms.create_options = 0;
 oparms.fid = &fid;
 oparms.reconnect = 0;

 if (no_cached_open)
  rc = SMB2_open(xid, &oparms, &srch_path, &oplock, ((void*)0), ((void*)0),
          ((void*)0));
 else
  rc = open_shroot(xid, tcon, &fid);

 if (rc)
  return;

 SMB3_request_interfaces(xid, tcon);

 SMB2_QFS_attr(xid, tcon, fid.persistent_fid, fid.volatile_fid,
   FS_ATTRIBUTE_INFORMATION);
 SMB2_QFS_attr(xid, tcon, fid.persistent_fid, fid.volatile_fid,
   FS_DEVICE_INFORMATION);
 SMB2_QFS_attr(xid, tcon, fid.persistent_fid, fid.volatile_fid,
   FS_VOLUME_INFORMATION);
 SMB2_QFS_attr(xid, tcon, fid.persistent_fid, fid.volatile_fid,
   FS_SECTOR_SIZE_INFORMATION);
 if (no_cached_open)
  SMB2_close(xid, tcon, fid.persistent_fid, fid.volatile_fid);
 else
  close_shroot(&tcon->crfid);
}
