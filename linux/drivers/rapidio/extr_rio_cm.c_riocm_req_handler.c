
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct rio_channel {scalar_t__ state; int comp; int lock; int accept_queue; } ;
struct TYPE_2__ {int src_id; } ;
struct rio_ch_chan_hdr {int src_ch; TYPE_1__ bhdr; int dst_ch; } ;
struct conn_req {int node; struct cm_dev* cmdev; void* chan; int destid; } ;
struct cm_dev {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ RIO_CM_LISTEN ;
 int RX_CMD ;
 int complete (int *) ;
 struct conn_req* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int ntohl (int ) ;
 void* ntohs (int ) ;
 int riocm_debug (int ,char*,void*) ;
 struct rio_channel* riocm_get_channel (void*) ;
 int riocm_put_channel (struct rio_channel*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int riocm_req_handler(struct cm_dev *cm, void *req_data)
{
 struct rio_channel *ch;
 struct conn_req *req;
 struct rio_ch_chan_hdr *hh = req_data;
 u16 chnum;

 chnum = ntohs(hh->dst_ch);

 ch = riocm_get_channel(chnum);

 if (!ch)
  return -ENODEV;

 if (ch->state != RIO_CM_LISTEN) {
  riocm_debug(RX_CMD, "channel %d is not in listen state", chnum);
  riocm_put_channel(ch);
  return -EINVAL;
 }

 req = kzalloc(sizeof(*req), GFP_KERNEL);
 if (!req) {
  riocm_put_channel(ch);
  return -ENOMEM;
 }

 req->destid = ntohl(hh->bhdr.src_id);
 req->chan = ntohs(hh->src_ch);
 req->cmdev = cm;

 spin_lock_bh(&ch->lock);
 list_add_tail(&req->node, &ch->accept_queue);
 spin_unlock_bh(&ch->lock);
 complete(&ch->comp);
 riocm_put_channel(ch);

 return 0;
}
