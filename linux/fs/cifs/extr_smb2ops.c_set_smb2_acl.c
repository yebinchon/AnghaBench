
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tcon_link {int dummy; } ;
struct inode {int i_sb; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_open_parms {int desired_access; char const* path; int reconnect; struct cifs_fid* fid; int disposition; struct cifs_tcon* tcon; scalar_t__ create_options; } ;
struct cifs_ntsd {int dummy; } ;
struct cifs_fid {int volatile_fid; int persistent_fid; } ;
typedef int __u32 ;
typedef int __le16 ;


 int CIFS_ACL_GROUP ;
 int CIFS_ACL_OWNER ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 scalar_t__ CREATE_OPEN_BACKUP_INTENT ;
 int ENOMEM ;
 int FILE_OPEN ;
 int FYI ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 int SMB2_OPLOCK_LEVEL_NONE ;
 int SMB2_close (unsigned int,struct cifs_tcon*,int ,int ) ;
 int SMB2_open (unsigned int,struct cifs_open_parms*,int *,int *,int *,int *,int *) ;
 int SMB2_set_acl (unsigned int,struct cifs_tcon*,int ,int ,struct cifs_ntsd*,int ,int) ;
 int WRITE_DAC ;
 int WRITE_OWNER ;
 scalar_t__ backup_cred (struct cifs_sb_info*) ;
 int * cifs_convert_path_to_utf16 (char const*,struct cifs_sb_info*) ;
 int cifs_dbg (int ,char*,char const*) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int free_xid (unsigned int) ;
 unsigned int get_xid () ;
 int kfree (int *) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

__attribute__((used)) static int
set_smb2_acl(struct cifs_ntsd *pnntsd, __u32 acllen,
  struct inode *inode, const char *path, int aclflag)
{
 u8 oplock = SMB2_OPLOCK_LEVEL_NONE;
 unsigned int xid;
 int rc, access_flags = 0;
 struct cifs_tcon *tcon;
 struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
 struct tcon_link *tlink = cifs_sb_tlink(cifs_sb);
 struct cifs_fid fid;
 struct cifs_open_parms oparms;
 __le16 *utf16_path;

 cifs_dbg(FYI, "set smb3 acl for path %s\n", path);
 if (IS_ERR(tlink))
  return PTR_ERR(tlink);

 tcon = tlink_tcon(tlink);
 xid = get_xid();

 if (backup_cred(cifs_sb))
  oparms.create_options = CREATE_OPEN_BACKUP_INTENT;
 else
  oparms.create_options = 0;

 if (aclflag == CIFS_ACL_OWNER || aclflag == CIFS_ACL_GROUP)
  access_flags = WRITE_OWNER;
 else
  access_flags = WRITE_DAC;

 utf16_path = cifs_convert_path_to_utf16(path, cifs_sb);
 if (!utf16_path) {
  rc = -ENOMEM;
  free_xid(xid);
  return rc;
 }

 oparms.tcon = tcon;
 oparms.desired_access = access_flags;
 oparms.disposition = FILE_OPEN;
 oparms.path = path;
 oparms.fid = &fid;
 oparms.reconnect = 0;

 rc = SMB2_open(xid, &oparms, utf16_path, &oplock, ((void*)0), ((void*)0), ((void*)0));
 kfree(utf16_path);
 if (!rc) {
  rc = SMB2_set_acl(xid, tlink_tcon(tlink), fid.persistent_fid,
       fid.volatile_fid, pnntsd, acllen, aclflag);
  SMB2_close(xid, tcon, fid.persistent_fid, fid.volatile_fid);
 }

 cifs_put_tlink(tlink);
 free_xid(xid);
 return rc;
}
