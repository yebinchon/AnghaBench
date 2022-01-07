
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct perf_peer {int gidx; int pidx; struct perf_ctx* perf; } ;
struct perf_ctx {TYPE_1__* ntb; int gidx; } ;
typedef enum perf_cmd { ____Placeholder_perf_cmd } perf_cmd ;
struct TYPE_4__ {int dev; } ;


 int EAGAIN ;
 int ENOLINK ;
 int MSG_TRIES ;
 int MSG_UDELAY_HIGH ;
 int MSG_UDELAY_LOW ;
 scalar_t__ PERF_CMD_INVAL ;
 int PERF_SPAD_CMD (int ) ;
 int PERF_SPAD_HDATA (int ) ;
 int PERF_SPAD_LDATA (int ) ;
 int PERF_SPAD_NOTIFY (int ) ;
 int dev_dbg (int *,char*,int,...) ;
 int lower_32_bits (int ) ;
 int ntb_peer_db_set (TYPE_1__*,int ) ;
 scalar_t__ ntb_peer_spad_read (TYPE_1__*,int ,int ) ;
 int ntb_peer_spad_write (TYPE_1__*,int ,int ,int) ;
 int perf_link_is_up (struct perf_peer*) ;
 int upper_32_bits (int ) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int perf_spad_cmd_send(struct perf_peer *peer, enum perf_cmd cmd,
         u64 data)
{
 struct perf_ctx *perf = peer->perf;
 int try;
 u32 sts;

 dev_dbg(&perf->ntb->dev, "CMD send: %d 0x%llx\n", cmd, data);
 for (try = 0; try < MSG_TRIES; try++) {
  if (!perf_link_is_up(peer))
   return -ENOLINK;

  sts = ntb_peer_spad_read(perf->ntb, peer->pidx,
      PERF_SPAD_CMD(perf->gidx));
  if (sts != PERF_CMD_INVAL) {
   usleep_range(MSG_UDELAY_LOW, MSG_UDELAY_HIGH);
   continue;
  }

  ntb_peer_spad_write(perf->ntb, peer->pidx,
        PERF_SPAD_LDATA(perf->gidx),
        lower_32_bits(data));
  ntb_peer_spad_write(perf->ntb, peer->pidx,
        PERF_SPAD_HDATA(perf->gidx),
        upper_32_bits(data));
  ntb_peer_spad_write(perf->ntb, peer->pidx,
        PERF_SPAD_CMD(perf->gidx),
        cmd);
  ntb_peer_db_set(perf->ntb, PERF_SPAD_NOTIFY(peer->gidx));

  dev_dbg(&perf->ntb->dev, "DB ring peer %#llx\n",
   PERF_SPAD_NOTIFY(peer->gidx));

  break;
 }

 return try < MSG_TRIES ? 0 : -EAGAIN;
}
