
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct inode {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifsInodeInfo {int cifsAttrs; } ;
struct cifsFileInfo {int dummy; } ;
typedef int data ;
struct TYPE_4__ {int Attributes; } ;
typedef TYPE_1__ FILE_BASIC_INFO ;


 int ACL_NO_MODE ;
 int ATTR_READONLY ;
 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 int CREATE_NOT_FILE ;
 int FILE_CREATE ;
 int FILE_WRITE_ATTRIBUTES ;
 int SMB2_OP_SET_INFO ;
 int cifs_get_writable_path (struct cifs_tcon*,char const*,struct cifsFileInfo**) ;
 int cpu_to_le32 (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int smb2_compound_op (unsigned int const,struct cifs_tcon*,struct cifs_sb_info*,char const*,int ,int ,int ,int ,TYPE_1__*,int ,struct cifsFileInfo*) ;

void
smb2_mkdir_setinfo(struct inode *inode, const char *name,
     struct cifs_sb_info *cifs_sb, struct cifs_tcon *tcon,
     const unsigned int xid)
{
 FILE_BASIC_INFO data;
 struct cifsInodeInfo *cifs_i;
 struct cifsFileInfo *cfile;
 u32 dosattrs;
 int tmprc;

 memset(&data, 0, sizeof(data));
 cifs_i = CIFS_I(inode);
 dosattrs = cifs_i->cifsAttrs | ATTR_READONLY;
 data.Attributes = cpu_to_le32(dosattrs);
 cifs_get_writable_path(tcon, name, &cfile);
 tmprc = smb2_compound_op(xid, tcon, cifs_sb, name,
     FILE_WRITE_ATTRIBUTES, FILE_CREATE,
     CREATE_NOT_FILE, ACL_NO_MODE,
     &data, SMB2_OP_SET_INFO, cfile);
 if (tmprc == 0)
  cifs_i->cifsAttrs = dosattrs;
}
