
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int i_data; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_tcon {TYPE_3__* ses; } ;
struct cifsFileInfo {int tlink; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_8__ {scalar_t__ time; } ;
struct TYPE_7__ {TYPE_2__* server; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* copychunk_range ) (unsigned int,struct cifsFileInfo*,struct cifsFileInfo*,int ,size_t,int ) ;} ;


 TYPE_4__* CIFS_I (struct inode*) ;
 int EBADF ;
 int EOPNOTSUPP ;
 int EXDEV ;
 int FYI ;
 int VFS ;
 int cifs_dbg (int ,char*) ;
 int file_accessed (struct file*) ;
 struct inode* file_inode (struct file*) ;
 int file_modified (struct file*) ;
 int lock_two_nondirectories (struct inode*,struct inode*) ;
 int stub1 (unsigned int,struct cifsFileInfo*,struct cifsFileInfo*,int ,size_t,int ) ;
 struct cifs_tcon* tlink_tcon (int ) ;
 int truncate_inode_pages (int *,int ) ;
 int unlock_two_nondirectories (struct inode*,struct inode*) ;

ssize_t cifs_file_copychunk_range(unsigned int xid,
    struct file *src_file, loff_t off,
    struct file *dst_file, loff_t destoff,
    size_t len, unsigned int flags)
{
 struct inode *src_inode = file_inode(src_file);
 struct inode *target_inode = file_inode(dst_file);
 struct cifsFileInfo *smb_file_src;
 struct cifsFileInfo *smb_file_target;
 struct cifs_tcon *src_tcon;
 struct cifs_tcon *target_tcon;
 ssize_t rc;

 cifs_dbg(FYI, "copychunk range\n");

 if (!src_file->private_data || !dst_file->private_data) {
  rc = -EBADF;
  cifs_dbg(VFS, "missing cifsFileInfo on copy range src file\n");
  goto out;
 }

 rc = -EXDEV;
 smb_file_target = dst_file->private_data;
 smb_file_src = src_file->private_data;
 src_tcon = tlink_tcon(smb_file_src->tlink);
 target_tcon = tlink_tcon(smb_file_target->tlink);

 if (src_tcon->ses != target_tcon->ses) {
  cifs_dbg(VFS, "source and target of copy not on same server\n");
  goto out;
 }

 rc = -EOPNOTSUPP;
 if (!target_tcon->ses->server->ops->copychunk_range)
  goto out;






 lock_two_nondirectories(target_inode, src_inode);

 cifs_dbg(FYI, "about to flush pages\n");

 truncate_inode_pages(&target_inode->i_data, 0);

 rc = file_modified(dst_file);
 if (!rc)
  rc = target_tcon->ses->server->ops->copychunk_range(xid,
   smb_file_src, smb_file_target, off, len, destoff);

 file_accessed(src_file);




 CIFS_I(target_inode)->time = 0;



 unlock_two_nondirectories(src_inode, target_inode);

out:
 return rc;
}
