
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ is_valid; } ;
struct cifs_tcon {TYPE_1__ crfid; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_open_parms {int reconnect; struct cifs_fid* fid; scalar_t__ create_options; int disposition; int desired_access; struct cifs_tcon* tcon; } ;
struct cifs_fid {int volatile_fid; int persistent_fid; } ;
typedef int __u8 ;
typedef int __le16 ;


 scalar_t__ CREATE_OPEN_BACKUP_INTENT ;
 int ENOMEM ;
 int FILE_OPEN ;
 int FILE_READ_ATTRIBUTES ;
 int SMB2_OPLOCK_LEVEL_NONE ;
 int SMB2_close (unsigned int const,struct cifs_tcon*,int ,int ) ;
 int SMB2_open (unsigned int const,struct cifs_open_parms*,int *,int *,int *,int *,int *) ;
 scalar_t__ backup_cred (struct cifs_sb_info*) ;
 int * cifs_convert_path_to_utf16 (char const*,struct cifs_sb_info*) ;
 int kfree (int *) ;

__attribute__((used)) static int
smb2_is_path_accessible(const unsigned int xid, struct cifs_tcon *tcon,
   struct cifs_sb_info *cifs_sb, const char *full_path)
{
 int rc;
 __le16 *utf16_path;
 __u8 oplock = SMB2_OPLOCK_LEVEL_NONE;
 struct cifs_open_parms oparms;
 struct cifs_fid fid;

 if ((*full_path == 0) && tcon->crfid.is_valid)
  return 0;

 utf16_path = cifs_convert_path_to_utf16(full_path, cifs_sb);
 if (!utf16_path)
  return -ENOMEM;

 oparms.tcon = tcon;
 oparms.desired_access = FILE_READ_ATTRIBUTES;
 oparms.disposition = FILE_OPEN;
 if (backup_cred(cifs_sb))
  oparms.create_options = CREATE_OPEN_BACKUP_INTENT;
 else
  oparms.create_options = 0;
 oparms.fid = &fid;
 oparms.reconnect = 0;

 rc = SMB2_open(xid, &oparms, utf16_path, &oplock, ((void*)0), ((void*)0), ((void*)0));
 if (rc) {
  kfree(utf16_path);
  return rc;
 }

 rc = SMB2_close(xid, tcon, fid.persistent_fid, fid.volatile_fid);
 kfree(utf16_path);
 return rc;
}
