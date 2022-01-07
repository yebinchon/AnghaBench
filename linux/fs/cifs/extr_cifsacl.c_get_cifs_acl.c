
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_ntsd {int dummy; } ;
struct cifsFileInfo {int fid; } ;


 int CIFS_I (struct inode*) ;
 int cifsFileInfo_put (struct cifsFileInfo*) ;
 struct cifsFileInfo* find_readable_file (int ,int) ;
 struct cifs_ntsd* get_cifs_acl_by_fid (struct cifs_sb_info*,int *,int *) ;
 struct cifs_ntsd* get_cifs_acl_by_path (struct cifs_sb_info*,char const*,int *) ;

struct cifs_ntsd *get_cifs_acl(struct cifs_sb_info *cifs_sb,
          struct inode *inode, const char *path,
          u32 *pacllen)
{
 struct cifs_ntsd *pntsd = ((void*)0);
 struct cifsFileInfo *open_file = ((void*)0);

 if (inode)
  open_file = find_readable_file(CIFS_I(inode), 1);
 if (!open_file)
  return get_cifs_acl_by_path(cifs_sb, path, pacllen);

 pntsd = get_cifs_acl_by_fid(cifs_sb, &open_file->fid, pacllen);
 cifsFileInfo_put(open_file);
 return pntsd;
}
