
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct perf_peer {int gidx; } ;
struct perf_ctx {int pcnt; TYPE_1__* ntb; struct perf_peer* peers; int gidx; } ;
typedef enum perf_cmd { ____Placeholder_perf_cmd } perf_cmd ;
struct TYPE_4__ {int dev; } ;


 int ENODATA ;
 scalar_t__ PERF_CMD_INVAL ;
 int PERF_SPAD_CMD (int ) ;
 int PERF_SPAD_HDATA (int ) ;
 int PERF_SPAD_LDATA (int ) ;
 int PERF_SPAD_NOTIFY (int ) ;
 int dev_dbg (int *,char*,int,int) ;
 int ntb_db_clear (TYPE_1__*,int ) ;
 scalar_t__ ntb_spad_read (TYPE_1__*,int ) ;
 int ntb_spad_write (TYPE_1__*,int ,scalar_t__) ;
 int perf_link_is_up (struct perf_peer*) ;

__attribute__((used)) static int perf_spad_cmd_recv(struct perf_ctx *perf, int *pidx,
         enum perf_cmd *cmd, u64 *data)
{
 struct perf_peer *peer;
 u32 val;

 ntb_db_clear(perf->ntb, PERF_SPAD_NOTIFY(perf->gidx));







 for (*pidx = 0; *pidx < perf->pcnt; (*pidx)++) {
  peer = &perf->peers[*pidx];

  if (!perf_link_is_up(peer))
   continue;

  val = ntb_spad_read(perf->ntb, PERF_SPAD_CMD(peer->gidx));
  if (val == PERF_CMD_INVAL)
   continue;

  *cmd = val;

  val = ntb_spad_read(perf->ntb, PERF_SPAD_LDATA(peer->gidx));
  *data = val;

  val = ntb_spad_read(perf->ntb, PERF_SPAD_HDATA(peer->gidx));
  *data |= (u64)val << 32;


  ntb_spad_write(perf->ntb, PERF_SPAD_CMD(peer->gidx),
          PERF_CMD_INVAL);

  dev_dbg(&perf->ntb->dev, "CMD recv: %d 0x%llx\n", *cmd, *data);

  return 0;
 }

 return -ENODATA;
}
