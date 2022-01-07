
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int dummy; } ;
struct glink_channel {int refcount; int riids; int liids; int intent_work; int done_intents; int intent_req_comp; int open_ack; int open_req; int name; struct qcom_glink* glink; int intent_req_lock; int intent_lock; int recv_lock; } ;


 int ENOMEM ;
 struct glink_channel* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int idr_init (int *) ;
 int init_completion (int *) ;
 int kref_init (int *) ;
 int kstrdup (char const*,int ) ;
 struct glink_channel* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int qcom_glink_rx_done_work ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct glink_channel *qcom_glink_alloc_channel(struct qcom_glink *glink,
            const char *name)
{
 struct glink_channel *channel;

 channel = kzalloc(sizeof(*channel), GFP_KERNEL);
 if (!channel)
  return ERR_PTR(-ENOMEM);


 spin_lock_init(&channel->recv_lock);
 spin_lock_init(&channel->intent_lock);
 mutex_init(&channel->intent_req_lock);

 channel->glink = glink;
 channel->name = kstrdup(name, GFP_KERNEL);

 init_completion(&channel->open_req);
 init_completion(&channel->open_ack);
 init_completion(&channel->intent_req_comp);

 INIT_LIST_HEAD(&channel->done_intents);
 INIT_WORK(&channel->intent_work, qcom_glink_rx_done_work);

 idr_init(&channel->liids);
 idr_init(&channel->riids);
 kref_init(&channel->refcount);

 return channel;
}
