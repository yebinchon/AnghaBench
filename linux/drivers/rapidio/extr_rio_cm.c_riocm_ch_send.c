
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct rio_channel {scalar_t__ rem_channel; scalar_t__ id; int rdev; int cmdev; int rem_destid; int loc_destid; } ;
struct TYPE_4__ {int type; void* dst_mbox; void* src_mbox; void* dst_id; void* src_id; } ;
struct rio_ch_chan_hdr {void* msg_len; void* src_ch; void* dst_ch; int ch_op; TYPE_1__ bhdr; } ;
struct TYPE_5__ {int comm; } ;


 int CM_DATA_MSG ;
 int EAGAIN ;
 int EINVAL ;
 int ENODEV ;
 int RIO_CM_CHAN ;
 int RIO_CM_CONNECTED ;
 int RIO_MAX_MSG_SIZE ;
 int TX ;
 void* cmbox ;
 TYPE_2__* current ;
 void* htonl (int ) ;
 void* htons (scalar_t__) ;
 int riocm_cmp (struct rio_channel*,int ) ;
 int riocm_debug (int ,char*,scalar_t__,int) ;
 int riocm_error (char*,int ,int ,scalar_t__) ;
 struct rio_channel* riocm_get_channel (scalar_t__) ;
 int riocm_post_send (int ,int ,void*,int) ;
 int riocm_put_channel (struct rio_channel*) ;
 int task_pid_nr (TYPE_2__*) ;

__attribute__((used)) static int riocm_ch_send(u16 ch_id, void *buf, int len)
{
 struct rio_channel *ch;
 struct rio_ch_chan_hdr *hdr;
 int ret;

 if (buf == ((void*)0) || ch_id == 0 || len == 0 || len > RIO_MAX_MSG_SIZE)
  return -EINVAL;

 ch = riocm_get_channel(ch_id);
 if (!ch) {
  riocm_error("%s(%d) ch_%d not found", current->comm,
       task_pid_nr(current), ch_id);
  return -ENODEV;
 }

 if (!riocm_cmp(ch, RIO_CM_CONNECTED)) {
  ret = -EAGAIN;
  goto err_out;
 }




 hdr = buf;

 hdr->bhdr.src_id = htonl(ch->loc_destid);
 hdr->bhdr.dst_id = htonl(ch->rem_destid);
 hdr->bhdr.src_mbox = cmbox;
 hdr->bhdr.dst_mbox = cmbox;
 hdr->bhdr.type = RIO_CM_CHAN;
 hdr->ch_op = CM_DATA_MSG;
 hdr->dst_ch = htons(ch->rem_channel);
 hdr->src_ch = htons(ch->id);
 hdr->msg_len = htons((u16)len);







 ret = riocm_post_send(ch->cmdev, ch->rdev, buf, len);
 if (ret)
  riocm_debug(TX, "ch %d send_err=%d", ch->id, ret);
err_out:
 riocm_put_channel(ch);
 return ret;
}
