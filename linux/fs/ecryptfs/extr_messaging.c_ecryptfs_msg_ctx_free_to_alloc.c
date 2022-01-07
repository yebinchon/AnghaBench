
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_msg_ctx {scalar_t__ counter; int state; int node; } ;


 int ECRYPTFS_MSG_CTX_STATE_PENDING ;
 scalar_t__ ecryptfs_msg_counter ;
 int ecryptfs_msg_ctx_alloc_list ;
 int list_move (int *,int *) ;

__attribute__((used)) static void ecryptfs_msg_ctx_free_to_alloc(struct ecryptfs_msg_ctx *msg_ctx)
{
 list_move(&msg_ctx->node, &ecryptfs_msg_ctx_alloc_list);
 msg_ctx->state = ECRYPTFS_MSG_CTX_STATE_PENDING;
 msg_ctx->counter = ++ecryptfs_msg_counter;
}
