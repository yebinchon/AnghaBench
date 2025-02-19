
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tool_ctx {int inspad_cnt; int inmsg_cnt; int peer_cnt; int inmw_cnt; int outmw_cnt; int outspad_cnt; int outmsg_cnt; struct tool_ctx* outmsgs; struct tool_ctx* peers; int * dbgfs_dir; struct tool_ctx* outspads; struct tool_ctx* outmws; struct tool_ctx* inmws; struct tool_ctx* inmsgs; struct tool_ctx* inspads; TYPE_1__* ntb; } ;
typedef int buf ;
struct TYPE_2__ {int dev; } ;


 int TOOL_BUF_LEN ;
 void* debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int,int *,struct tool_ctx*,int *) ;
 char* dev_name (int *) ;
 int snprintf (char*,int,char*,int) ;
 int tool_db_event_fops ;
 int tool_db_fops ;
 int tool_db_mask_fops ;
 int tool_db_valid_mask_fops ;
 int * tool_dbgfs_topdir ;
 int tool_inmsg_fops ;
 int tool_link_fops ;
 int tool_msg_event_fops ;
 int tool_msg_inbits_fops ;
 int tool_msg_mask_fops ;
 int tool_msg_outbits_fops ;
 int tool_msg_sts_fops ;
 int tool_mw_trans_fops ;
 int tool_outmsg_fops ;
 int tool_peer_db_fops ;
 int tool_peer_db_mask_fops ;
 int tool_peer_link_event_fops ;
 int tool_peer_link_fops ;
 int tool_peer_mw_trans_fops ;
 int tool_peer_port_fops ;
 int tool_peer_spad_fops ;
 int tool_port_fops ;
 int tool_spad_fops ;

__attribute__((used)) static void tool_setup_dbgfs(struct tool_ctx *tc)
{
 int pidx, widx, sidx, midx;
 char buf[TOOL_BUF_LEN];


 if (!tool_dbgfs_topdir) {
  tc->dbgfs_dir = ((void*)0);
  return;
 }

 tc->dbgfs_dir = debugfs_create_dir(dev_name(&tc->ntb->dev),
        tool_dbgfs_topdir);
 if (!tc->dbgfs_dir)
  return;

 debugfs_create_file("port", 0600, tc->dbgfs_dir,
       tc, &tool_port_fops);

 debugfs_create_file("link", 0600, tc->dbgfs_dir,
       tc, &tool_link_fops);

 debugfs_create_file("db", 0600, tc->dbgfs_dir,
       tc, &tool_db_fops);

 debugfs_create_file("db_valid_mask", 0600, tc->dbgfs_dir,
       tc, &tool_db_valid_mask_fops);

 debugfs_create_file("db_mask", 0600, tc->dbgfs_dir,
       tc, &tool_db_mask_fops);

 debugfs_create_file("db_event", 0600, tc->dbgfs_dir,
       tc, &tool_db_event_fops);

 debugfs_create_file("peer_db", 0600, tc->dbgfs_dir,
       tc, &tool_peer_db_fops);

 debugfs_create_file("peer_db_mask", 0600, tc->dbgfs_dir,
       tc, &tool_peer_db_mask_fops);

 if (tc->inspad_cnt != 0) {
  for (sidx = 0; sidx < tc->inspad_cnt; sidx++) {
   snprintf(buf, sizeof(buf), "spad%d", sidx);

   debugfs_create_file(buf, 0600, tc->dbgfs_dir,
        &tc->inspads[sidx], &tool_spad_fops);
  }
 }

 if (tc->inmsg_cnt != 0) {
  for (midx = 0; midx < tc->inmsg_cnt; midx++) {
   snprintf(buf, sizeof(buf), "msg%d", midx);
   debugfs_create_file(buf, 0600, tc->dbgfs_dir,
        &tc->inmsgs[midx], &tool_inmsg_fops);
  }

  debugfs_create_file("msg_sts", 0600, tc->dbgfs_dir,
        tc, &tool_msg_sts_fops);

  debugfs_create_file("msg_inbits", 0600, tc->dbgfs_dir,
        tc, &tool_msg_inbits_fops);

  debugfs_create_file("msg_outbits", 0600, tc->dbgfs_dir,
        tc, &tool_msg_outbits_fops);

  debugfs_create_file("msg_mask", 0600, tc->dbgfs_dir,
        tc, &tool_msg_mask_fops);

  debugfs_create_file("msg_event", 0600, tc->dbgfs_dir,
        tc, &tool_msg_event_fops);
 }

 for (pidx = 0; pidx < tc->peer_cnt; pidx++) {
  snprintf(buf, sizeof(buf), "peer%d", pidx);
  tc->peers[pidx].dbgfs_dir =
   debugfs_create_dir(buf, tc->dbgfs_dir);

  debugfs_create_file("port", 0600,
        tc->peers[pidx].dbgfs_dir,
        &tc->peers[pidx], &tool_peer_port_fops);

  debugfs_create_file("link", 0200,
        tc->peers[pidx].dbgfs_dir,
        &tc->peers[pidx], &tool_peer_link_fops);

  debugfs_create_file("link_event", 0200,
      tc->peers[pidx].dbgfs_dir,
      &tc->peers[pidx], &tool_peer_link_event_fops);

  for (widx = 0; widx < tc->peers[pidx].inmw_cnt; widx++) {
   snprintf(buf, sizeof(buf), "mw_trans%d", widx);
   debugfs_create_file(buf, 0600,
         tc->peers[pidx].dbgfs_dir,
         &tc->peers[pidx].inmws[widx],
         &tool_mw_trans_fops);
  }

  for (widx = 0; widx < tc->peers[pidx].outmw_cnt; widx++) {
   snprintf(buf, sizeof(buf), "peer_mw_trans%d", widx);
   debugfs_create_file(buf, 0600,
         tc->peers[pidx].dbgfs_dir,
         &tc->peers[pidx].outmws[widx],
         &tool_peer_mw_trans_fops);
  }

  for (sidx = 0; sidx < tc->peers[pidx].outspad_cnt; sidx++) {
   snprintf(buf, sizeof(buf), "spad%d", sidx);

   debugfs_create_file(buf, 0600,
         tc->peers[pidx].dbgfs_dir,
         &tc->peers[pidx].outspads[sidx],
         &tool_peer_spad_fops);
  }

  for (midx = 0; midx < tc->peers[pidx].outmsg_cnt; midx++) {
   snprintf(buf, sizeof(buf), "msg%d", midx);
   debugfs_create_file(buf, 0600,
         tc->peers[pidx].dbgfs_dir,
         &tc->peers[pidx].outmsgs[midx],
         &tool_outmsg_fops);
  }
 }
}
