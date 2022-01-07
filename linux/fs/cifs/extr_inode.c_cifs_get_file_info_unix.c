
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_fattr {int dummy; } ;
struct TYPE_2__ {int netfid; } ;
struct cifsFileInfo {TYPE_1__ fid; int tlink; } ;
typedef int FILE_UNIX_BASIC_INFO ;


 int CIFSSMBUnixQFileInfo (unsigned int,struct cifs_tcon*,int ,int *) ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int EREMOTE ;
 int cifs_create_dfs_fattr (struct cifs_fattr*,int ) ;
 int cifs_fattr_to_inode (struct inode*,struct cifs_fattr*) ;
 int cifs_unix_basic_to_fattr (struct cifs_fattr*,int *,struct cifs_sb_info*) ;
 struct inode* file_inode (struct file*) ;
 int free_xid (unsigned int) ;
 unsigned int get_xid () ;
 struct cifs_tcon* tlink_tcon (int ) ;

__attribute__((used)) static int
cifs_get_file_info_unix(struct file *filp)
{
 int rc;
 unsigned int xid;
 FILE_UNIX_BASIC_INFO find_data;
 struct cifs_fattr fattr;
 struct inode *inode = file_inode(filp);
 struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
 struct cifsFileInfo *cfile = filp->private_data;
 struct cifs_tcon *tcon = tlink_tcon(cfile->tlink);

 xid = get_xid();
 rc = CIFSSMBUnixQFileInfo(xid, tcon, cfile->fid.netfid, &find_data);
 if (!rc) {
  cifs_unix_basic_to_fattr(&fattr, &find_data, cifs_sb);
 } else if (rc == -EREMOTE) {
  cifs_create_dfs_fattr(&fattr, inode->i_sb);
  rc = 0;
 }

 cifs_fattr_to_inode(inode, &fattr);
 free_xid(xid);
 return rc;
}
