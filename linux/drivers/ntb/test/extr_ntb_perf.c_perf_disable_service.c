
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_peer {int gidx; int service; } ;
struct perf_ctx {scalar_t__ cmd_send; int pcnt; int ntb; int gidx; struct perf_peer* peers; } ;


 int PERF_CMD_CLEAR ;
 int PERF_SPAD_CMD (int ) ;
 int PERF_SPAD_NOTIFY (int ) ;
 int flush_work (int *) ;
 int ntb_clear_ctx (int ) ;
 int ntb_db_clear (int ,int ) ;
 int ntb_db_set_mask (int ,int ) ;
 int ntb_link_disable (int ) ;
 int ntb_msg_inbits (int ) ;
 int ntb_msg_set_mask (int ,int ) ;
 int ntb_spad_write (int ,int ,int ) ;
 int perf_cmd_exec (struct perf_peer*,int ) ;
 scalar_t__ perf_msg_cmd_send ;

__attribute__((used)) static void perf_disable_service(struct perf_ctx *perf)
{
 int pidx;

 if (perf->cmd_send == perf_msg_cmd_send) {
  u64 inbits;

  inbits = ntb_msg_inbits(perf->ntb);
  (void)ntb_msg_set_mask(perf->ntb, inbits);
 } else {
  (void)ntb_db_set_mask(perf->ntb, PERF_SPAD_NOTIFY(perf->gidx));
 }

 ntb_clear_ctx(perf->ntb);

 for (pidx = 0; pidx < perf->pcnt; pidx++)
  perf_cmd_exec(&perf->peers[pidx], PERF_CMD_CLEAR);

 for (pidx = 0; pidx < perf->pcnt; pidx++)
  flush_work(&perf->peers[pidx].service);

 for (pidx = 0; pidx < perf->pcnt; pidx++) {
  struct perf_peer *peer = &perf->peers[pidx];

  ntb_spad_write(perf->ntb, PERF_SPAD_CMD(peer->gidx), 0);
 }

 ntb_db_clear(perf->ntb, PERF_SPAD_NOTIFY(perf->gidx));

 ntb_link_disable(perf->ntb);
}
