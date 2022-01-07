
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kiocb {int ki_pos; struct file* ki_filp; } ;
struct iov_iter {int type; } ;
struct file {int f_flags; struct cifsFileInfo* private_data; } ;
struct cifs_tcon {TYPE_3__* ses; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_aio_ctx {int should_dirty; int direct_io; size_t len; int rc; int total_len; int refcount; int aio_mutex; int done; int list; struct iov_iter iter; int pos; struct kiocb* iocb; int cfile; } ;
struct cifsFileInfo {int tlink; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_6__ {TYPE_2__* server; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int async_readv; } ;


 struct cifs_sb_info* CIFS_FILE_SB (struct file*) ;
 int EINTR ;
 int EIOCBQUEUED ;
 int ENOMEM ;
 int ENOSYS ;
 int FYI ;
 int ITER_KVEC ;
 int O_ACCMODE ;
 int O_WRONLY ;
 int READ ;
 int cifsFileInfo_get (struct cifsFileInfo*) ;
 struct cifs_aio_ctx* cifs_aio_ctx_alloc () ;
 int cifs_aio_ctx_release ;
 int cifs_dbg (int ,char*) ;
 int cifs_send_async_read (int ,size_t,struct cifsFileInfo*,struct cifs_sb_info*,int *,struct cifs_aio_ctx*) ;
 size_t iov_iter_count (struct iov_iter*) ;
 int is_sync_kiocb (struct kiocb*) ;
 scalar_t__ iter_is_iovec (struct iov_iter*) ;
 int kref_put (int *,int ) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int setup_aio_ctx_iter (struct cifs_aio_ctx*,struct iov_iter*,int ) ;
 struct cifs_tcon* tlink_tcon (int ) ;
 int wait_for_completion_killable (int *) ;

__attribute__((used)) static ssize_t __cifs_readv(
 struct kiocb *iocb, struct iov_iter *to, bool direct)
{
 size_t len;
 struct file *file = iocb->ki_filp;
 struct cifs_sb_info *cifs_sb;
 struct cifsFileInfo *cfile;
 struct cifs_tcon *tcon;
 ssize_t rc, total_read = 0;
 loff_t offset = iocb->ki_pos;
 struct cifs_aio_ctx *ctx;






 if (direct && to->type & ITER_KVEC) {
  cifs_dbg(FYI, "use non-direct cifs_user_readv for kvec I/O\n");
  direct = 0;
 }

 len = iov_iter_count(to);
 if (!len)
  return 0;

 cifs_sb = CIFS_FILE_SB(file);
 cfile = file->private_data;
 tcon = tlink_tcon(cfile->tlink);

 if (!tcon->ses->server->ops->async_readv)
  return -ENOSYS;

 if ((file->f_flags & O_ACCMODE) == O_WRONLY)
  cifs_dbg(FYI, "attempting read on write only file instance\n");

 ctx = cifs_aio_ctx_alloc();
 if (!ctx)
  return -ENOMEM;

 ctx->cfile = cifsFileInfo_get(cfile);

 if (!is_sync_kiocb(iocb))
  ctx->iocb = iocb;

 if (iter_is_iovec(to))
  ctx->should_dirty = 1;

 if (direct) {
  ctx->pos = offset;
  ctx->direct_io = 1;
  ctx->iter = *to;
  ctx->len = len;
 } else {
  rc = setup_aio_ctx_iter(ctx, to, READ);
  if (rc) {
   kref_put(&ctx->refcount, cifs_aio_ctx_release);
   return rc;
  }
  len = ctx->len;
 }


 mutex_lock(&ctx->aio_mutex);

 rc = cifs_send_async_read(offset, len, cfile, cifs_sb, &ctx->list, ctx);


 if (!list_empty(&ctx->list))
  rc = 0;

 mutex_unlock(&ctx->aio_mutex);

 if (rc) {
  kref_put(&ctx->refcount, cifs_aio_ctx_release);
  return rc;
 }

 if (!is_sync_kiocb(iocb)) {
  kref_put(&ctx->refcount, cifs_aio_ctx_release);
  return -EIOCBQUEUED;
 }

 rc = wait_for_completion_killable(&ctx->done);
 if (rc) {
  mutex_lock(&ctx->aio_mutex);
  ctx->rc = rc = -EINTR;
  total_read = ctx->total_len;
  mutex_unlock(&ctx->aio_mutex);
 } else {
  rc = ctx->rc;
  total_read = ctx->total_len;
 }

 kref_put(&ctx->refcount, cifs_aio_ctx_release);

 if (total_read) {
  iocb->ki_pos += total_read;
  return total_read;
 }
 return rc;
}
