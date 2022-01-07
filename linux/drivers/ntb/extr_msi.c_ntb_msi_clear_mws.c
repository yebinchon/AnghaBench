
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_dev {int dummy; } ;


 int ntb_mw_clear_trans (struct ntb_dev*,int,int) ;
 int ntb_peer_highest_mw_idx (struct ntb_dev*,int) ;
 int ntb_peer_port_count (struct ntb_dev*) ;

void ntb_msi_clear_mws(struct ntb_dev *ntb)
{
 int peer;
 int peer_widx;

 for (peer = 0; peer < ntb_peer_port_count(ntb); peer++) {
  peer_widx = ntb_peer_highest_mw_idx(ntb, peer);
  if (peer_widx < 0)
   continue;

  ntb_mw_clear_trans(ntb, peer, peer_widx);
 }
}
