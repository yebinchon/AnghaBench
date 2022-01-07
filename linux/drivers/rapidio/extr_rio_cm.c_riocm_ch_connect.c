
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct rio_channel {int id; int comp; int loc_destid; int rem_channel; int * context; TYPE_3__* rdev; struct cm_dev* cmdev; } ;
struct TYPE_6__ {int type; void* dst_mbox; void* src_mbox; void* dst_id; void* src_id; } ;
struct rio_ch_chan_hdr {void* src_ch; void* dst_ch; int ch_op; TYPE_2__ bhdr; } ;
struct cm_peer {TYPE_3__* rdev; } ;
struct cm_dev {TYPE_1__* mport; } ;
struct TYPE_7__ {int destid; } ;
struct TYPE_5__ {int host_deviceid; } ;


 int CM_CONN_REQ ;
 int EBUSY ;
 int EINTR ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 long ERESTARTSYS ;
 int ETIME ;
 int GFP_KERNEL ;
 int HZ ;
 int RIOCM_CONNECT_TO ;
 int RIO_CM_CHAN ;
 int RIO_CM_CONNECT ;
 int RIO_CM_CONNECTED ;
 int RIO_CM_IDLE ;
 int WAIT ;
 void* cmbox ;
 void* htonl (int ) ;
 void* htons (int ) ;
 int kfree (struct rio_ch_chan_hdr*) ;
 struct rio_ch_chan_hdr* kzalloc (int,int ) ;
 scalar_t__ riocm_cmp (struct rio_channel*,int ) ;
 int riocm_cmp_exch (struct rio_channel*,int ,int ) ;
 int riocm_debug (int ,char*,int ,long) ;
 struct rio_channel* riocm_get_channel (int ) ;
 int riocm_post_send (struct cm_dev*,TYPE_3__*,struct rio_ch_chan_hdr*,int) ;
 int riocm_put_channel (struct rio_channel*) ;
 int riocm_queue_req (struct cm_dev*,TYPE_3__*,struct rio_ch_chan_hdr*,int) ;
 long wait_for_completion_interruptible_timeout (int *,int) ;

__attribute__((used)) static int riocm_ch_connect(u16 loc_ch, struct cm_dev *cm,
       struct cm_peer *peer, u16 rem_ch)
{
 struct rio_channel *ch = ((void*)0);
 struct rio_ch_chan_hdr *hdr;
 int ret;
 long wret;

 ch = riocm_get_channel(loc_ch);
 if (!ch)
  return -ENODEV;

 if (!riocm_cmp_exch(ch, RIO_CM_IDLE, RIO_CM_CONNECT)) {
  ret = -EINVAL;
  goto conn_done;
 }

 ch->cmdev = cm;
 ch->rdev = peer->rdev;
 ch->context = ((void*)0);
 ch->loc_destid = cm->mport->host_deviceid;
 ch->rem_channel = rem_ch;





 hdr = kzalloc(sizeof(*hdr), GFP_KERNEL);
 if (hdr == ((void*)0)) {
  ret = -ENOMEM;
  goto conn_done;
 }

 hdr->bhdr.src_id = htonl(ch->loc_destid);
 hdr->bhdr.dst_id = htonl(peer->rdev->destid);
 hdr->bhdr.src_mbox = cmbox;
 hdr->bhdr.dst_mbox = cmbox;
 hdr->bhdr.type = RIO_CM_CHAN;
 hdr->ch_op = CM_CONN_REQ;
 hdr->dst_ch = htons(rem_ch);
 hdr->src_ch = htons(loc_ch);






 ret = riocm_post_send(cm, peer->rdev, hdr, sizeof(*hdr));

 if (ret != -EBUSY) {
  kfree(hdr);
 } else {
  ret = riocm_queue_req(cm, peer->rdev, hdr, sizeof(*hdr));
  if (ret)
   kfree(hdr);
 }

 if (ret) {
  riocm_cmp_exch(ch, RIO_CM_CONNECT, RIO_CM_IDLE);
  goto conn_done;
 }


 wret = wait_for_completion_interruptible_timeout(&ch->comp,
        RIOCM_CONNECT_TO * HZ);
 riocm_debug(WAIT, "wait on %d returns %ld", ch->id, wret);

 if (!wret)
  ret = -ETIME;
 else if (wret == -ERESTARTSYS)
  ret = -EINTR;
 else
  ret = riocm_cmp(ch, RIO_CM_CONNECTED) ? 0 : -1;

conn_done:
 riocm_put_channel(ch);
 return ret;
}
