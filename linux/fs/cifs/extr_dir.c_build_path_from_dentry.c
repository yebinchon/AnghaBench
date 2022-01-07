
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_sb; } ;
struct cifs_tcon {int Flags; } ;
struct cifs_sb_info {int dummy; } ;


 struct cifs_sb_info* CIFS_SB (int ) ;
 int SMB_SHARE_IS_IN_DFS ;
 char* build_path_from_dentry_optional_prefix (struct dentry*,int) ;
 struct cifs_tcon* cifs_sb_master_tcon (struct cifs_sb_info*) ;

char *
build_path_from_dentry(struct dentry *direntry)
{
 struct cifs_sb_info *cifs_sb = CIFS_SB(direntry->d_sb);
 struct cifs_tcon *tcon = cifs_sb_master_tcon(cifs_sb);
 bool prefix = tcon->Flags & SMB_SHARE_IS_IN_DFS;

 return build_path_from_dentry_optional_prefix(direntry,
            prefix);
}
