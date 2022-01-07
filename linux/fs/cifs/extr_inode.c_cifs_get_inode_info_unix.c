
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {int i_mode; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; int local_nls; } ;
struct cifs_fattr {scalar_t__ cf_uniqueid; int cf_mode; } ;
struct TYPE_2__ {scalar_t__ uniqueid; scalar_t__ time; } ;
typedef int FILE_UNIX_BASIC_INFO ;


 int CIFSSMBUnixQPathInfo (unsigned int,struct cifs_tcon*,unsigned char const*,int *,int ,int ) ;
 TYPE_1__* CIFS_I (struct inode*) ;
 int CIFS_MOUNT_MF_SYMLINKS ;
 int CIFS_MOUNT_SERVER_INUM ;
 struct cifs_sb_info* CIFS_SB (struct super_block*) ;
 int ENOMEM ;
 int EREMOTE ;
 int ESTALE ;
 int FYI ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 int S_IFMT ;
 int check_mf_symlink (unsigned int,struct cifs_tcon*,struct cifs_sb_info*,struct cifs_fattr*,unsigned char const*) ;
 int cifs_create_dfs_fattr (struct cifs_fattr*,struct super_block*) ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_fattr_to_inode (struct inode*,struct cifs_fattr*) ;
 int cifs_fill_uniqueid (struct super_block*,struct cifs_fattr*) ;
 struct inode* cifs_iget (struct super_block*,struct cifs_fattr*) ;
 int cifs_put_tlink (struct tcon_link*) ;
 int cifs_remap (struct cifs_sb_info*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int cifs_unix_basic_to_fattr (struct cifs_fattr*,int *,struct cifs_sb_info*) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;
 scalar_t__ unlikely (int) ;

int cifs_get_inode_info_unix(struct inode **pinode,
        const unsigned char *full_path,
        struct super_block *sb, unsigned int xid)
{
 int rc;
 FILE_UNIX_BASIC_INFO find_data;
 struct cifs_fattr fattr;
 struct cifs_tcon *tcon;
 struct tcon_link *tlink;
 struct cifs_sb_info *cifs_sb = CIFS_SB(sb);

 cifs_dbg(FYI, "Getting info on %s\n", full_path);

 tlink = cifs_sb_tlink(cifs_sb);
 if (IS_ERR(tlink))
  return PTR_ERR(tlink);
 tcon = tlink_tcon(tlink);


 rc = CIFSSMBUnixQPathInfo(xid, tcon, full_path, &find_data,
      cifs_sb->local_nls, cifs_remap(cifs_sb));
 cifs_put_tlink(tlink);

 if (!rc) {
  cifs_unix_basic_to_fattr(&fattr, &find_data, cifs_sb);
 } else if (rc == -EREMOTE) {
  cifs_create_dfs_fattr(&fattr, sb);
  rc = 0;
 } else {
  return rc;
 }


 if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MF_SYMLINKS) {
  int tmprc = check_mf_symlink(xid, tcon, cifs_sb, &fattr,
          full_path);
  if (tmprc)
   cifs_dbg(FYI, "check_mf_symlink: %d\n", tmprc);
 }

 if (*pinode == ((void*)0)) {

  cifs_fill_uniqueid(sb, &fattr);
  *pinode = cifs_iget(sb, &fattr);
  if (!*pinode)
   rc = -ENOMEM;
 } else {



  if (unlikely(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM &&
      CIFS_I(*pinode)->uniqueid != fattr.cf_uniqueid)) {
   CIFS_I(*pinode)->time = 0;
   rc = -ESTALE;
   goto cgiiu_exit;
  }


  if (unlikely(((*pinode)->i_mode & S_IFMT) !=
      (fattr.cf_mode & S_IFMT))) {
   CIFS_I(*pinode)->time = 0;
   rc = -ESTALE;
   goto cgiiu_exit;
  }

  cifs_fattr_to_inode(*pinode, &fattr);
 }

cgiiu_exit:
 return rc;
}
