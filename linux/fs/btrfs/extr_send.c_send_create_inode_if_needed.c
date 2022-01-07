
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_ctx {int cur_ino; int cur_inode_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 int did_create_dir (struct send_ctx*,int ) ;
 int send_create_inode (struct send_ctx*,int ) ;

__attribute__((used)) static int send_create_inode_if_needed(struct send_ctx *sctx)
{
 int ret;

 if (S_ISDIR(sctx->cur_inode_mode)) {
  ret = did_create_dir(sctx, sctx->cur_ino);
  if (ret < 0)
   goto out;
  if (ret) {
   ret = 0;
   goto out;
  }
 }

 ret = send_create_inode(sctx, sctx->cur_ino);
 if (ret < 0)
  goto out;

out:
 return ret;
}
