
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_peer {int sts; } ;
struct perf_ctx {int pcnt; struct perf_peer* peers; } ;


 int PERF_CMD_CLEAR ;
 int PERF_CMD_SSIZE ;
 int PERF_STS_LNKUP ;
 int perf_cmd_exec (struct perf_peer*,int ) ;
 int perf_link_is_up (struct perf_peer*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void perf_link_event(void *ctx)
{
 struct perf_ctx *perf = ctx;
 struct perf_peer *peer;
 bool lnk_up;
 int pidx;

 for (pidx = 0; pidx < perf->pcnt; pidx++) {
  peer = &perf->peers[pidx];

  lnk_up = perf_link_is_up(peer);

  if (lnk_up &&
      !test_and_set_bit(PERF_STS_LNKUP, &peer->sts)) {
   perf_cmd_exec(peer, PERF_CMD_SSIZE);
  } else if (!lnk_up &&
      test_and_clear_bit(PERF_STS_LNKUP, &peer->sts)) {
   perf_cmd_exec(peer, PERF_CMD_CLEAR);
  }
 }
}
