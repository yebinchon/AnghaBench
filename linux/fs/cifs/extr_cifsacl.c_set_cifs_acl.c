
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcon_link {int dummy; } ;
struct inode {int i_sb; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_open_parms {int desired_access; int create_options; char const* path; int reconnect; struct cifs_fid* fid; int disposition; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifs_ntsd {int dummy; } ;
struct cifs_fid {int netfid; } ;
typedef int __u32 ;


 int CIFSSMBClose (unsigned int,struct cifs_tcon*,int ) ;
 int CIFSSMBSetCIFSACL (unsigned int,struct cifs_tcon*,int ,struct cifs_ntsd*,int ,int) ;
 int CIFS_ACL_GROUP ;
 int CIFS_ACL_OWNER ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int CIFS_open (unsigned int,struct cifs_open_parms*,int*,int *) ;
 int CREATE_OPEN_BACKUP_INTENT ;
 int FILE_OPEN ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int NOISY ;
 int PTR_ERR (struct tcon_link*) ;
 int VFS ;
 int WRITE_DAC ;
 int WRITE_OWNER ;
 scalar_t__ backup_cred (struct cifs_sb_info*) ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int free_xid (unsigned int) ;
 unsigned int get_xid () ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

int set_cifs_acl(struct cifs_ntsd *pnntsd, __u32 acllen,
   struct inode *inode, const char *path, int aclflag)
{
 int oplock = 0;
 unsigned int xid;
 int rc, access_flags, create_options = 0;
 struct cifs_tcon *tcon;
 struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
 struct tcon_link *tlink = cifs_sb_tlink(cifs_sb);
 struct cifs_fid fid;
 struct cifs_open_parms oparms;

 if (IS_ERR(tlink))
  return PTR_ERR(tlink);

 tcon = tlink_tcon(tlink);
 xid = get_xid();

 if (backup_cred(cifs_sb))
  create_options |= CREATE_OPEN_BACKUP_INTENT;

 if (aclflag == CIFS_ACL_OWNER || aclflag == CIFS_ACL_GROUP)
  access_flags = WRITE_OWNER;
 else
  access_flags = WRITE_DAC;

 oparms.tcon = tcon;
 oparms.cifs_sb = cifs_sb;
 oparms.desired_access = access_flags;
 oparms.create_options = create_options;
 oparms.disposition = FILE_OPEN;
 oparms.path = path;
 oparms.fid = &fid;
 oparms.reconnect = 0;

 rc = CIFS_open(xid, &oparms, &oplock, ((void*)0));
 if (rc) {
  cifs_dbg(VFS, "Unable to open file to set ACL\n");
  goto out;
 }

 rc = CIFSSMBSetCIFSACL(xid, tcon, fid.netfid, pnntsd, acllen, aclflag);
 cifs_dbg(NOISY, "SetCIFSACL rc = %d\n", rc);

 CIFSSMBClose(xid, tcon, fid.netfid);
out:
 free_xid(xid);
 cifs_put_tlink(tlink);
 return rc;
}
