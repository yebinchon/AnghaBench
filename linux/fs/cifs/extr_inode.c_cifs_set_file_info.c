
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct iattr {int ia_valid; int ia_ctime; int ia_mtime; int ia_atime; } ;
struct cifs_sb_info {int dummy; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
typedef int __u32 ;
struct TYPE_9__ {TYPE_1__* ses; } ;
struct TYPE_8__ {int Attributes; scalar_t__ CreationTime; void* ChangeTime; void* LastWriteTime; void* LastAccessTime; scalar_t__ Pad; } ;
struct TYPE_7__ {int (* set_file_info ) (struct inode*,char*,TYPE_3__*,unsigned int) ;} ;
struct TYPE_6__ {struct TCP_Server_Info* server; } ;
typedef TYPE_3__ FILE_BASIC_INFO ;


 int ATTR_ATIME ;
 int ATTR_CTIME ;
 int ATTR_MTIME ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int EINVAL ;
 int ENOSYS ;
 int FYI ;
 int cifs_UnixTimeToNT (int ) ;
 int cifs_dbg (int ,char*) ;
 TYPE_5__* cifs_sb_master_tcon (struct cifs_sb_info*) ;
 int cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int stub1 (struct inode*,char*,TYPE_3__*,unsigned int) ;

int
cifs_set_file_info(struct inode *inode, struct iattr *attrs, unsigned int xid,
     char *full_path, __u32 dosattr)
{
 bool set_time = 0;
 struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
 struct TCP_Server_Info *server;
 FILE_BASIC_INFO info_buf;

 if (attrs == ((void*)0))
  return -EINVAL;

 server = cifs_sb_master_tcon(cifs_sb)->ses->server;
 if (!server->ops->set_file_info)
  return -ENOSYS;

 info_buf.Pad = 0;

 if (attrs->ia_valid & ATTR_ATIME) {
  set_time = 1;
  info_buf.LastAccessTime =
   cpu_to_le64(cifs_UnixTimeToNT(attrs->ia_atime));
 } else
  info_buf.LastAccessTime = 0;

 if (attrs->ia_valid & ATTR_MTIME) {
  set_time = 1;
  info_buf.LastWriteTime =
      cpu_to_le64(cifs_UnixTimeToNT(attrs->ia_mtime));
 } else
  info_buf.LastWriteTime = 0;







 if (set_time && (attrs->ia_valid & ATTR_CTIME)) {
  cifs_dbg(FYI, "CIFS - CTIME changed\n");
  info_buf.ChangeTime =
      cpu_to_le64(cifs_UnixTimeToNT(attrs->ia_ctime));
 } else
  info_buf.ChangeTime = 0;

 info_buf.CreationTime = 0;
 info_buf.Attributes = cpu_to_le32(dosattr);

 return server->ops->set_file_info(inode, full_path, &info_buf, xid);
}
