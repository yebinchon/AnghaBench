
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smd_channel_info_word {int dummy; } ;
struct smd_channel_info {int dummy; } ;
struct qcom_smd_edge {int dev; int remote_pid; } ;
struct qcom_smd_channel {size_t fifo_size; struct qcom_smd_channel* name; void* rx_fifo; void* tx_fifo; void* info; void* info_word; int state_change_event; int fblockread_event; int recv_lock; int tx_lock; struct qcom_smd_edge* edge; } ;


 int EINVAL ;
 int ENOMEM ;
 struct qcom_smd_channel* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_dbg (int *,char*,char*,size_t,size_t) ;
 int dev_err (int *,char*,size_t) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct qcom_smd_channel*) ;
 struct qcom_smd_channel* kstrdup (char*,int ) ;
 struct qcom_smd_channel* kzalloc (int,int ) ;
 int qcom_smd_channel_reset (struct qcom_smd_channel*) ;
 void* qcom_smem_get (int ,unsigned int,size_t*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct qcom_smd_channel *qcom_smd_create_channel(struct qcom_smd_edge *edge,
       unsigned smem_info_item,
       unsigned smem_fifo_item,
       char *name)
{
 struct qcom_smd_channel *channel;
 size_t fifo_size;
 size_t info_size;
 void *fifo_base;
 void *info;
 int ret;

 channel = kzalloc(sizeof(*channel), GFP_KERNEL);
 if (!channel)
  return ERR_PTR(-ENOMEM);

 channel->edge = edge;
 channel->name = kstrdup(name, GFP_KERNEL);
 if (!channel->name) {
  ret = -ENOMEM;
  goto free_channel;
 }

 spin_lock_init(&channel->tx_lock);
 spin_lock_init(&channel->recv_lock);
 init_waitqueue_head(&channel->fblockread_event);
 init_waitqueue_head(&channel->state_change_event);

 info = qcom_smem_get(edge->remote_pid, smem_info_item, &info_size);
 if (IS_ERR(info)) {
  ret = PTR_ERR(info);
  goto free_name_and_channel;
 }





 if (info_size == 2 * sizeof(struct smd_channel_info_word)) {
  channel->info_word = info;
 } else if (info_size == 2 * sizeof(struct smd_channel_info)) {
  channel->info = info;
 } else {
  dev_err(&edge->dev,
   "channel info of size %zu not supported\n", info_size);
  ret = -EINVAL;
  goto free_name_and_channel;
 }

 fifo_base = qcom_smem_get(edge->remote_pid, smem_fifo_item, &fifo_size);
 if (IS_ERR(fifo_base)) {
  ret = PTR_ERR(fifo_base);
  goto free_name_and_channel;
 }


 fifo_size /= 2;

 dev_dbg(&edge->dev, "new channel '%s' info-size: %zu fifo-size: %zu\n",
     name, info_size, fifo_size);

 channel->tx_fifo = fifo_base;
 channel->rx_fifo = fifo_base + fifo_size;
 channel->fifo_size = fifo_size;

 qcom_smd_channel_reset(channel);

 return channel;

free_name_and_channel:
 kfree(channel->name);
free_channel:
 kfree(channel);

 return ERR_PTR(ret);
}
