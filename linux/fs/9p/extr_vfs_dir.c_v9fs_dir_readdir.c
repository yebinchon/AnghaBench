
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p9_wstat {int qid; int name; } ;
struct p9_rdir {scalar_t__ buf; scalar_t__ tail; scalar_t__ head; } ;
struct p9_fid {TYPE_1__* clnt; } ;
struct kvec {scalar_t__ iov_base; int iov_len; } ;
struct iov_iter {int dummy; } ;
struct file {struct p9_fid* private_data; } ;
struct dir_context {int pos; } ;
struct TYPE_2__ {int msize; } ;


 int EIO ;
 int ENOMEM ;
 int P9_DEBUG_VFS ;
 int P9_IOHDRSZ ;
 int READ ;
 int dir_emit (struct dir_context*,int ,int ,int ,int ) ;
 int dt_type (struct p9_wstat*) ;
 int iov_iter_kvec (struct iov_iter*,int ,struct kvec*,int,int) ;
 int p9_client_read (struct p9_fid*,int,struct iov_iter*,int*) ;
 int p9_debug (int ,char*,...) ;
 int p9stat_free (struct p9_wstat*) ;
 int p9stat_read (TYPE_1__*,scalar_t__,scalar_t__,struct p9_wstat*) ;
 int strlen (int ) ;
 struct p9_rdir* v9fs_alloc_rdir_buf (struct file*,int) ;
 int v9fs_qid2ino (int *) ;

__attribute__((used)) static int v9fs_dir_readdir(struct file *file, struct dir_context *ctx)
{
 bool over;
 struct p9_wstat st;
 int err = 0;
 struct p9_fid *fid;
 int buflen;
 struct p9_rdir *rdir;
 struct kvec kvec;

 p9_debug(P9_DEBUG_VFS, "name %pD\n", file);
 fid = file->private_data;

 buflen = fid->clnt->msize - P9_IOHDRSZ;

 rdir = v9fs_alloc_rdir_buf(file, buflen);
 if (!rdir)
  return -ENOMEM;
 kvec.iov_base = rdir->buf;
 kvec.iov_len = buflen;

 while (1) {
  if (rdir->tail == rdir->head) {
   struct iov_iter to;
   int n;
   iov_iter_kvec(&to, READ, &kvec, 1, buflen);
   n = p9_client_read(file->private_data, ctx->pos, &to,
        &err);
   if (err)
    return err;
   if (n == 0)
    return 0;

   rdir->head = 0;
   rdir->tail = n;
  }
  while (rdir->head < rdir->tail) {
   err = p9stat_read(fid->clnt, rdir->buf + rdir->head,
       rdir->tail - rdir->head, &st);
   if (err <= 0) {
    p9_debug(P9_DEBUG_VFS, "returned %d\n", err);
    return -EIO;
   }

   over = !dir_emit(ctx, st.name, strlen(st.name),
      v9fs_qid2ino(&st.qid), dt_type(&st));
   p9stat_free(&st);
   if (over)
    return 0;

   rdir->head += err;
   ctx->pos += err;
  }
 }
}
