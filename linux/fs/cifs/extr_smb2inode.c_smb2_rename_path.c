
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifsFileInfo {int dummy; } ;


 int DELETE ;
 int SMB2_OP_RENAME ;
 int cifs_get_writable_path (struct cifs_tcon*,char const*,struct cifsFileInfo**) ;
 int smb2_set_path_attr (unsigned int const,struct cifs_tcon*,char const*,char const*,struct cifs_sb_info*,int ,int ,struct cifsFileInfo*) ;

int
smb2_rename_path(const unsigned int xid, struct cifs_tcon *tcon,
   const char *from_name, const char *to_name,
   struct cifs_sb_info *cifs_sb)
{
 struct cifsFileInfo *cfile;

 cifs_get_writable_path(tcon, from_name, &cfile);

 return smb2_set_path_attr(xid, tcon, from_name, to_name,
      cifs_sb, DELETE, SMB2_OP_RENAME, cfile);
}
