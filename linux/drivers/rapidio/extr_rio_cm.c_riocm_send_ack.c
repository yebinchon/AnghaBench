
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rio_channel {int rdev; int id; int cmdev; int rem_channel; int rem_destid; int loc_destid; } ;
struct TYPE_2__ {int type; void* dst_mbox; void* src_mbox; void* dst_id; void* src_id; } ;
struct rio_ch_chan_hdr {int ch_op; TYPE_1__ bhdr; void* src_ch; void* dst_ch; } ;


 int CM_CONN_ACK ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RIO_CM_CHAN ;
 void* cmbox ;
 void* htonl (int ) ;
 void* htons (int ) ;
 int kfree (struct rio_ch_chan_hdr*) ;
 struct rio_ch_chan_hdr* kzalloc (int,int ) ;
 int rio_name (int ) ;
 int riocm_error (char*,int ,int ,int) ;
 int riocm_post_send (int ,int ,struct rio_ch_chan_hdr*,int) ;
 int riocm_queue_req (int ,int ,struct rio_ch_chan_hdr*,int) ;

__attribute__((used)) static int riocm_send_ack(struct rio_channel *ch)
{
 struct rio_ch_chan_hdr *hdr;
 int ret;

 hdr = kzalloc(sizeof(*hdr), GFP_KERNEL);
 if (hdr == ((void*)0))
  return -ENOMEM;

 hdr->bhdr.src_id = htonl(ch->loc_destid);
 hdr->bhdr.dst_id = htonl(ch->rem_destid);
 hdr->dst_ch = htons(ch->rem_channel);
 hdr->src_ch = htons(ch->id);
 hdr->bhdr.src_mbox = cmbox;
 hdr->bhdr.dst_mbox = cmbox;
 hdr->bhdr.type = RIO_CM_CHAN;
 hdr->ch_op = CM_CONN_ACK;





 ret = riocm_post_send(ch->cmdev, ch->rdev, hdr, sizeof(*hdr));

 if (ret == -EBUSY && !riocm_queue_req(ch->cmdev,
           ch->rdev, hdr, sizeof(*hdr)))
  return 0;
 kfree(hdr);

 if (ret)
  riocm_error("send ACK to ch_%d on %s failed (ret=%d)",
       ch->id, rio_name(ch->rdev), ret);
 return ret;
}
