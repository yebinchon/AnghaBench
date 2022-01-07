
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct send_ctx {int parent_root; int send_root; } ;


 int get_inode_info (int ,scalar_t__,int *,scalar_t__*,int *,int *,int *,int *) ;

__attribute__((used)) static int dir_changed(struct send_ctx *sctx, u64 dir)
{
 u64 orig_gen, new_gen;
 int ret;

 ret = get_inode_info(sctx->send_root, dir, ((void*)0), &new_gen, ((void*)0), ((void*)0),
        ((void*)0), ((void*)0));
 if (ret)
  return ret;

 ret = get_inode_info(sctx->parent_root, dir, ((void*)0), &orig_gen, ((void*)0),
        ((void*)0), ((void*)0), ((void*)0));
 if (ret)
  return ret;

 return (orig_gen != new_gen) ? 1 : 0;
}
