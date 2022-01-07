
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct kvec {char* iov_base; unsigned int iov_len; } ;
struct dentry {int dummy; } ;
struct cifs_tcon {TYPE_1__* ses; } ;
struct cifs_io_parms {unsigned int length; scalar_t__ offset; struct cifs_tcon* tcon; int pid; } ;
struct cifsInodeInfo {int dummy; } ;
struct cifsFileInfo {int fid; scalar_t__ invalidHandle; int tlink; struct dentry* dentry; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
typedef int __u32 ;
struct TYPE_10__ {scalar_t__ i_size; int i_lock; } ;
struct TYPE_9__ {int (* sync_write ) (unsigned int,int *,struct cifs_io_parms*,unsigned int*,struct kvec*,int) ;int (* wp_retry_size ) (TYPE_3__*) ;} ;
struct TYPE_8__ {struct TCP_Server_Info* server; } ;


 struct cifsInodeInfo* CIFS_I (TYPE_3__*) ;
 int EAGAIN ;
 int ENOSYS ;
 int FYI ;
 int cifs_dbg (int ,char*,size_t,scalar_t__,struct dentry*) ;
 int cifs_reopen_file (struct cifsFileInfo*,int) ;
 int cifs_stats_bytes_written (struct cifs_tcon*,unsigned int) ;
 int cifs_update_eof (struct cifsInodeInfo*,scalar_t__,unsigned int) ;
 TYPE_3__* d_inode (struct dentry*) ;
 int free_xid (unsigned int) ;
 unsigned int get_xid () ;
 int i_size_write (TYPE_3__*,scalar_t__) ;
 int mark_inode_dirty_sync (TYPE_3__*) ;
 unsigned int min (int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (unsigned int,int *,struct cifs_io_parms*,unsigned int*,struct kvec*,int) ;
 struct cifs_tcon* tlink_tcon (int ) ;

__attribute__((used)) static ssize_t
cifs_write(struct cifsFileInfo *open_file, __u32 pid, const char *write_data,
    size_t write_size, loff_t *offset)
{
 int rc = 0;
 unsigned int bytes_written = 0;
 unsigned int total_written;
 struct cifs_tcon *tcon;
 struct TCP_Server_Info *server;
 unsigned int xid;
 struct dentry *dentry = open_file->dentry;
 struct cifsInodeInfo *cifsi = CIFS_I(d_inode(dentry));
 struct cifs_io_parms io_parms;

 cifs_dbg(FYI, "write %zd bytes to offset %lld of %pd\n",
   write_size, *offset, dentry);

 tcon = tlink_tcon(open_file->tlink);
 server = tcon->ses->server;

 if (!server->ops->sync_write)
  return -ENOSYS;

 xid = get_xid();

 for (total_written = 0; write_size > total_written;
      total_written += bytes_written) {
  rc = -EAGAIN;
  while (rc == -EAGAIN) {
   struct kvec iov[2];
   unsigned int len;

   if (open_file->invalidHandle) {




    rc = cifs_reopen_file(open_file, 0);
    if (rc != 0)
     break;
   }

   len = min(server->ops->wp_retry_size(d_inode(dentry)),
      (unsigned int)write_size - total_written);

   iov[1].iov_base = (char *)write_data + total_written;
   iov[1].iov_len = len;
   io_parms.pid = pid;
   io_parms.tcon = tcon;
   io_parms.offset = *offset;
   io_parms.length = len;
   rc = server->ops->sync_write(xid, &open_file->fid,
     &io_parms, &bytes_written, iov, 1);
  }
  if (rc || (bytes_written == 0)) {
   if (total_written)
    break;
   else {
    free_xid(xid);
    return rc;
   }
  } else {
   spin_lock(&d_inode(dentry)->i_lock);
   cifs_update_eof(cifsi, *offset, bytes_written);
   spin_unlock(&d_inode(dentry)->i_lock);
   *offset += bytes_written;
  }
 }

 cifs_stats_bytes_written(tcon, total_written);

 if (total_written > 0) {
  spin_lock(&d_inode(dentry)->i_lock);
  if (*offset > d_inode(dentry)->i_size)
   i_size_write(d_inode(dentry), *offset);
  spin_unlock(&d_inode(dentry)->i_lock);
 }
 mark_inode_dirty_sync(d_inode(dentry));
 free_xid(xid);
 return total_written;
}
