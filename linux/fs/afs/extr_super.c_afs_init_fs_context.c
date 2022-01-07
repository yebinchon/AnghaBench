
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int * ops; struct afs_fs_context* fs_private; int net_ns; } ;
struct afs_fs_context {struct afs_cell* cell; int net; int type; } ;
struct afs_cell {int dummy; } ;


 int AFSVL_ROVOL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct afs_cell*) ;
 int afs_context_ops ;
 struct afs_cell* afs_lookup_cell_rcu (int ,int *,int ) ;
 int afs_net (int ) ;
 struct afs_fs_context* kzalloc (int,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int afs_init_fs_context(struct fs_context *fc)
{
 struct afs_fs_context *ctx;
 struct afs_cell *cell;

 ctx = kzalloc(sizeof(struct afs_fs_context), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->type = AFSVL_ROVOL;
 ctx->net = afs_net(fc->net_ns);


 rcu_read_lock();
 cell = afs_lookup_cell_rcu(ctx->net, ((void*)0), 0);
 rcu_read_unlock();
 if (IS_ERR(cell))
  cell = ((void*)0);
 ctx->cell = cell;

 fc->fs_private = ctx;
 fc->ops = &afs_context_ops;
 return 0;
}
