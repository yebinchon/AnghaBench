
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;
struct dax_ctx {scalar_t__ status; int fail_count; int ccb_count; struct dax_ctx* ca_buf; struct dax_ctx* ccb_buf; } ;


 scalar_t__ CCA_STAT_NOT_COMPLETED ;
 int DAX_CA_ELEMS ;
 int dax_ccb_wait (struct dax_ctx*,int) ;
 int dax_dbg (char*,int) ;
 int dax_stat_dbg (char*,int ,int ) ;
 int dax_unlock_pages (struct dax_ctx*,int,int) ;
 int kfree (struct dax_ctx*) ;

__attribute__((used)) static int dax_close(struct inode *ino, struct file *f)
{
 struct dax_ctx *ctx = (struct dax_ctx *)f->private_data;
 int i;

 f->private_data = ((void*)0);

 for (i = 0; i < DAX_CA_ELEMS; i++) {
  if (ctx->ca_buf[i].status == CCA_STAT_NOT_COMPLETED) {
   dax_dbg("CCB[%d] not completed", i);
   dax_ccb_wait(ctx, i);
  }
  dax_unlock_pages(ctx, i, 1);
 }

 kfree(ctx->ccb_buf);
 kfree(ctx->ca_buf);
 dax_stat_dbg("CCBs: %d good, %d bad", ctx->ccb_count, ctx->fail_count);
 kfree(ctx);

 return 0;
}
