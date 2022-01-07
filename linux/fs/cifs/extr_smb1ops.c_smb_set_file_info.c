
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct inode {int i_sb; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int local_nls; } ;
struct cifs_open_parms {int desired_access; char const* path; int reconnect; struct cifs_fid* fid; int disposition; int create_options; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifs_fid {int netfid; } ;
struct cifsInodeInfo {void* cifsAttrs; } ;
struct TYPE_7__ {int netfid; } ;
struct cifsFileInfo {struct tcon_link* tlink; int pid; TYPE_1__ fid; } ;
typedef int __u32 ;
struct TYPE_9__ {int tgid; } ;
struct TYPE_8__ {int Attributes; } ;
typedef TYPE_2__ FILE_BASIC_INFO ;


 int CIFSSMBClose (unsigned int const,struct cifs_tcon*,int ) ;
 int CIFSSMBSetFileInfo (unsigned int const,struct cifs_tcon*,TYPE_2__*,int ,int ) ;
 int CIFSSMBSetPathInfo (unsigned int const,struct cifs_tcon*,char const*,TYPE_2__*,int ,int ) ;
 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int CIFS_open (unsigned int const,struct cifs_open_parms*,int*,int *) ;
 int CREATE_NOT_DIR ;
 int EINVAL ;
 int EIO ;
 int EOPNOTSUPP ;
 int FILE_OPEN ;
 int FILE_WRITE_ATTRIBUTES ;
 int FYI ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 int SYNCHRONIZE ;
 int cifsFileInfo_put (struct cifsFileInfo*) ;
 int cifs_dbg (int ,char*) ;
 int cifs_put_tlink (struct tcon_link*) ;
 int cifs_remap (struct cifs_sb_info*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 TYPE_4__* current ;
 struct cifsFileInfo* find_writable_file (struct cifsInodeInfo*,int) ;
 void* le32_to_cpu (int ) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

__attribute__((used)) static int
smb_set_file_info(struct inode *inode, const char *full_path,
    FILE_BASIC_INFO *buf, const unsigned int xid)
{
 int oplock = 0;
 int rc;
 __u32 netpid;
 struct cifs_fid fid;
 struct cifs_open_parms oparms;
 struct cifsFileInfo *open_file;
 struct cifsInodeInfo *cinode = CIFS_I(inode);
 struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
 struct tcon_link *tlink = ((void*)0);
 struct cifs_tcon *tcon;


 open_file = find_writable_file(cinode, 1);
 if (open_file) {
  fid.netfid = open_file->fid.netfid;
  netpid = open_file->pid;
  tcon = tlink_tcon(open_file->tlink);
  goto set_via_filehandle;
 }

 tlink = cifs_sb_tlink(cifs_sb);
 if (IS_ERR(tlink)) {
  rc = PTR_ERR(tlink);
  tlink = ((void*)0);
  goto out;
 }
 tcon = tlink_tcon(tlink);

 rc = CIFSSMBSetPathInfo(xid, tcon, full_path, buf, cifs_sb->local_nls,
    cifs_remap(cifs_sb));
 if (rc == 0) {
  cinode->cifsAttrs = le32_to_cpu(buf->Attributes);
  goto out;
 } else if (rc != -EOPNOTSUPP && rc != -EINVAL) {
  goto out;
 }

 oparms.tcon = tcon;
 oparms.cifs_sb = cifs_sb;
 oparms.desired_access = SYNCHRONIZE | FILE_WRITE_ATTRIBUTES;
 oparms.create_options = CREATE_NOT_DIR;
 oparms.disposition = FILE_OPEN;
 oparms.path = full_path;
 oparms.fid = &fid;
 oparms.reconnect = 0;

 cifs_dbg(FYI, "calling SetFileInfo since SetPathInfo for times not supported by this server\n");
 rc = CIFS_open(xid, &oparms, &oplock, ((void*)0));
 if (rc != 0) {
  if (rc == -EIO)
   rc = -EINVAL;
  goto out;
 }

 netpid = current->tgid;

set_via_filehandle:
 rc = CIFSSMBSetFileInfo(xid, tcon, buf, fid.netfid, netpid);
 if (!rc)
  cinode->cifsAttrs = le32_to_cpu(buf->Attributes);

 if (open_file == ((void*)0))
  CIFSSMBClose(xid, tcon, fid.netfid);
 else
  cifsFileInfo_put(open_file);
out:
 if (tlink != ((void*)0))
  cifs_put_tlink(tlink);
 return rc;
}
