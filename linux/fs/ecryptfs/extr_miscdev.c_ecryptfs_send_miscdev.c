
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ecryptfs_msg_ctx {int msg_size; int mux; int daemon_out_list; struct ecryptfs_message* msg; int type; int index; } ;
struct ecryptfs_message {size_t data_len; int data; int index; } ;
struct ecryptfs_daemon {int mux; int wait; int num_queued_msg_ctx; int msg_ctx_out_queue; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ecryptfs_message* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,char*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible (int *) ;

int ecryptfs_send_miscdev(char *data, size_t data_size,
     struct ecryptfs_msg_ctx *msg_ctx, u8 msg_type,
     u16 msg_flags, struct ecryptfs_daemon *daemon)
{
 struct ecryptfs_message *msg;

 msg = kmalloc((sizeof(*msg) + data_size), GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 mutex_lock(&msg_ctx->mux);
 msg_ctx->msg = msg;
 msg_ctx->msg->index = msg_ctx->index;
 msg_ctx->msg->data_len = data_size;
 msg_ctx->type = msg_type;
 memcpy(msg_ctx->msg->data, data, data_size);
 msg_ctx->msg_size = (sizeof(*msg_ctx->msg) + data_size);
 list_add_tail(&msg_ctx->daemon_out_list, &daemon->msg_ctx_out_queue);
 mutex_unlock(&msg_ctx->mux);

 mutex_lock(&daemon->mux);
 daemon->num_queued_msg_ctx++;
 wake_up_interruptible(&daemon->wait);
 mutex_unlock(&daemon->mux);

 return 0;
}
