
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct perf_peer {int pidx; struct perf_ctx* perf; } ;
struct perf_ctx {TYPE_1__* ntb; } ;
typedef enum perf_cmd { ____Placeholder_perf_cmd } perf_cmd ;
struct TYPE_5__ {int dev; } ;


 int EAGAIN ;
 int ENOLINK ;
 int MSG_TRIES ;
 int MSG_UDELAY_HIGH ;
 int MSG_UDELAY_LOW ;
 int PERF_MSG_CMD ;
 int PERF_MSG_HDATA ;
 int PERF_MSG_LDATA ;
 int dev_dbg (int *,char*,int,int) ;
 int lower_32_bits (int) ;
 int ntb_msg_clear_sts (TYPE_1__*,int) ;
 int ntb_msg_outbits (TYPE_1__*) ;
 int ntb_msg_read_sts (TYPE_1__*) ;
 int ntb_peer_msg_write (TYPE_1__*,int ,int ,int) ;
 int perf_link_is_up (struct perf_peer*) ;
 int upper_32_bits (int) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int perf_msg_cmd_send(struct perf_peer *peer, enum perf_cmd cmd,
        u64 data)
{
 struct perf_ctx *perf = peer->perf;
 int try, ret;
 u64 outbits;

 dev_dbg(&perf->ntb->dev, "CMD send: %d 0x%llx\n", cmd, data);
 outbits = ntb_msg_outbits(perf->ntb);
 for (try = 0; try < MSG_TRIES; try++) {
  if (!perf_link_is_up(peer))
   return -ENOLINK;

  ret = ntb_msg_clear_sts(perf->ntb, outbits);
  if (ret)
   return ret;

  ntb_peer_msg_write(perf->ntb, peer->pidx, PERF_MSG_LDATA,
       lower_32_bits(data));

  if (ntb_msg_read_sts(perf->ntb) & outbits) {
   usleep_range(MSG_UDELAY_LOW, MSG_UDELAY_HIGH);
   continue;
  }

  ntb_peer_msg_write(perf->ntb, peer->pidx, PERF_MSG_HDATA,
       upper_32_bits(data));


  ntb_peer_msg_write(perf->ntb, peer->pidx, PERF_MSG_CMD, cmd);

  break;
 }

 return try < MSG_TRIES ? 0 : -EAGAIN;
}
