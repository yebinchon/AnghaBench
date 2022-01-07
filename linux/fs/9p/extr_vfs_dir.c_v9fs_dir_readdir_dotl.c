
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p9_rdir {int tail; int head; scalar_t__ buf; } ;
struct p9_fid {TYPE_1__* clnt; } ;
struct p9_dirent {int d_off; int d_type; int qid; int d_name; } ;
struct file {struct p9_fid* private_data; } ;
struct dir_context {int pos; } ;
struct TYPE_2__ {int msize; } ;


 int EIO ;
 int ENOMEM ;
 int P9_DEBUG_VFS ;
 int P9_READDIRHDRSZ ;
 int dir_emit (struct dir_context*,int ,int ,int ,int ) ;
 int p9_client_readdir (struct p9_fid*,scalar_t__,int,int ) ;
 int p9_debug (int ,char*,...) ;
 int p9dirent_read (TYPE_1__*,scalar_t__,int,struct p9_dirent*) ;
 int strlen (int ) ;
 struct p9_rdir* v9fs_alloc_rdir_buf (struct file*,int) ;
 int v9fs_qid2ino (int *) ;

__attribute__((used)) static int v9fs_dir_readdir_dotl(struct file *file, struct dir_context *ctx)
{
 int err = 0;
 struct p9_fid *fid;
 int buflen;
 struct p9_rdir *rdir;
 struct p9_dirent curdirent;

 p9_debug(P9_DEBUG_VFS, "name %pD\n", file);
 fid = file->private_data;

 buflen = fid->clnt->msize - P9_READDIRHDRSZ;

 rdir = v9fs_alloc_rdir_buf(file, buflen);
 if (!rdir)
  return -ENOMEM;

 while (1) {
  if (rdir->tail == rdir->head) {
   err = p9_client_readdir(fid, rdir->buf, buflen,
      ctx->pos);
   if (err <= 0)
    return err;

   rdir->head = 0;
   rdir->tail = err;
  }

  while (rdir->head < rdir->tail) {

   err = p9dirent_read(fid->clnt, rdir->buf + rdir->head,
         rdir->tail - rdir->head,
         &curdirent);
   if (err < 0) {
    p9_debug(P9_DEBUG_VFS, "returned %d\n", err);
    return -EIO;
   }

   if (!dir_emit(ctx, curdirent.d_name,
          strlen(curdirent.d_name),
          v9fs_qid2ino(&curdirent.qid),
          curdirent.d_type))
    return 0;

   ctx->pos = curdirent.d_off;
   rdir->head += err;
  }
 }
}
