
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_root; } ;
struct smb_vol {int dummy; } ;
struct inode {int i_mode; } ;
struct dentry {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;


 char CIFS_DIR_SEP (struct cifs_sb_info*) ;
 int CIFS_MOUNT_USE_PREFIX_PATH ;
 struct cifs_sb_info* CIFS_SB (struct super_block*) ;
 int ENOENT ;
 int ENOMEM ;
 int ENOTDIR ;
 struct dentry* ERR_PTR (int ) ;
 int FYI ;
 int IS_ERR (struct dentry*) ;
 int S_ISDIR (int ) ;
 char* cifs_build_path_to_root (struct smb_vol*,struct cifs_sb_info*,int ,int ) ;
 int cifs_dbg (int ,char*,char*) ;
 int cifs_sb_master_tcon (struct cifs_sb_info*) ;
 struct inode* d_inode (struct dentry*) ;
 struct dentry* dget (int ) ;
 int dput (struct dentry*) ;
 int kfree (char*) ;
 struct dentry* lookup_one_len_unlocked (char*,struct dentry*,int) ;

__attribute__((used)) static struct dentry *
cifs_get_root(struct smb_vol *vol, struct super_block *sb)
{
 struct dentry *dentry;
 struct cifs_sb_info *cifs_sb = CIFS_SB(sb);
 char *full_path = ((void*)0);
 char *s, *p;
 char sep;

 if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_USE_PREFIX_PATH)
  return dget(sb->s_root);

 full_path = cifs_build_path_to_root(vol, cifs_sb,
    cifs_sb_master_tcon(cifs_sb), 0);
 if (full_path == ((void*)0))
  return ERR_PTR(-ENOMEM);

 cifs_dbg(FYI, "Get root dentry for %s\n", full_path);

 sep = CIFS_DIR_SEP(cifs_sb);
 dentry = dget(sb->s_root);
 p = s = full_path;

 do {
  struct inode *dir = d_inode(dentry);
  struct dentry *child;

  if (!dir) {
   dput(dentry);
   dentry = ERR_PTR(-ENOENT);
   break;
  }
  if (!S_ISDIR(dir->i_mode)) {
   dput(dentry);
   dentry = ERR_PTR(-ENOTDIR);
   break;
  }


  while (*s == sep)
   s++;
  if (!*s)
   break;
  p = s++;

  while (*s && *s != sep)
   s++;

  child = lookup_one_len_unlocked(p, dentry, s - p);
  dput(dentry);
  dentry = child;
 } while (!IS_ERR(dentry));
 kfree(full_path);
 return dentry;
}
