
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct inode {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int local_nls; } ;
struct cifsInodeInfo {int cifsAttrs; } ;
typedef int info ;
struct TYPE_4__ {int Attributes; } ;
typedef TYPE_1__ FILE_BASIC_INFO ;


 int ATTR_READONLY ;
 int CIFSSMBSetPathInfo (unsigned int const,struct cifs_tcon*,char const*,TYPE_1__*,int ,int ) ;
 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 int cifs_remap (struct cifs_sb_info*) ;
 int cpu_to_le32 (int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
cifs_mkdir_setinfo(struct inode *inode, const char *full_path,
     struct cifs_sb_info *cifs_sb, struct cifs_tcon *tcon,
     const unsigned int xid)
{
 FILE_BASIC_INFO info;
 struct cifsInodeInfo *cifsInode;
 u32 dosattrs;
 int rc;

 memset(&info, 0, sizeof(info));
 cifsInode = CIFS_I(inode);
 dosattrs = cifsInode->cifsAttrs|ATTR_READONLY;
 info.Attributes = cpu_to_le32(dosattrs);
 rc = CIFSSMBSetPathInfo(xid, tcon, full_path, &info, cifs_sb->local_nls,
    cifs_remap(cifs_sb));
 if (rc == 0)
  cifsInode->cifsAttrs = dosattrs;
}
