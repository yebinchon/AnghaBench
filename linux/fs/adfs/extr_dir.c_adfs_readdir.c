
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct object_info {char* name; int name_len; int indaddr; } ;
struct inode {int i_size; int i_ino; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct dir_context {int pos; } ;
struct adfs_dir_ops {int (* read ) (struct super_block*,int ,int ,struct adfs_dir*) ;int (* setpos ) (struct adfs_dir*,int) ;scalar_t__ (* getnext ) (struct adfs_dir*,struct object_info*) ;int (* free ) (struct adfs_dir*) ;} ;
struct adfs_dir {int parent_id; } ;
struct TYPE_2__ {struct adfs_dir_ops* s_dir; } ;


 TYPE_1__* ADFS_SB (struct super_block*) ;
 int DT_DIR ;
 int DT_UNKNOWN ;
 int adfs_dir_lock ;
 int dir_emit (struct dir_context*,char*,int,int ,int ) ;
 int dir_emit_dot (struct file*,struct dir_context*) ;
 struct inode* file_inode (struct file*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int stub1 (struct super_block*,int ,int ,struct adfs_dir*) ;
 int stub2 (struct adfs_dir*,int) ;
 scalar_t__ stub3 (struct adfs_dir*,struct object_info*) ;
 int stub4 (struct adfs_dir*) ;

__attribute__((used)) static int
adfs_readdir(struct file *file, struct dir_context *ctx)
{
 struct inode *inode = file_inode(file);
 struct super_block *sb = inode->i_sb;
 const struct adfs_dir_ops *ops = ADFS_SB(sb)->s_dir;
 struct object_info obj;
 struct adfs_dir dir;
 int ret = 0;

 if (ctx->pos >> 32)
  return 0;

 ret = ops->read(sb, inode->i_ino, inode->i_size, &dir);
 if (ret)
  return ret;

 if (ctx->pos == 0) {
  if (!dir_emit_dot(file, ctx))
   goto free_out;
  ctx->pos = 1;
 }
 if (ctx->pos == 1) {
  if (!dir_emit(ctx, "..", 2, dir.parent_id, DT_DIR))
   goto free_out;
  ctx->pos = 2;
 }

 read_lock(&adfs_dir_lock);

 ret = ops->setpos(&dir, ctx->pos - 2);
 if (ret)
  goto unlock_out;
 while (ops->getnext(&dir, &obj) == 0) {
  if (!dir_emit(ctx, obj.name, obj.name_len,
         obj.indaddr, DT_UNKNOWN))
   break;
  ctx->pos++;
 }

unlock_out:
 read_unlock(&adfs_dir_lock);

free_out:
 ops->free(&dir);
 return ret;
}
