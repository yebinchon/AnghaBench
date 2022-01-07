
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifs_fattr {int cf_uniqueid; } ;


 int CIFS_MOUNT_SERVER_INUM ;
 struct cifs_sb_info* CIFS_SB (struct super_block*) ;
 int ROOT_I ;
 int iunique (struct super_block*,int ) ;

void
cifs_fill_uniqueid(struct super_block *sb, struct cifs_fattr *fattr)
{
 struct cifs_sb_info *cifs_sb = CIFS_SB(sb);

 if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM)
  return;

 fattr->cf_uniqueid = iunique(sb, ROOT_I);
}
