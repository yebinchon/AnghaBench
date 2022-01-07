
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwtty_peer {int dummy; } ;
struct fwserial_mgmt_pkt {int dummy; } ;
struct fw_request {int dummy; } ;
struct fw_card {int dummy; } ;


 int RCODE_CONFLICT_ERROR ;
 int RCODE_TYPE_ERROR ;

 int __dump_peer_list (struct fw_card*) ;
 struct fwtty_peer* __fwserial_peer_by_node_id (struct fw_card*,int,int) ;
 int fw_send_response (struct fw_card*,struct fw_request*,int) ;
 int fwserial_parse_mgmt_write (struct fwtty_peer*,struct fwserial_mgmt_pkt*,unsigned long long,size_t) ;
 int fwtty_dbg (struct fw_card*,char*,int,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void fwserial_mgmt_handler(struct fw_card *card,
      struct fw_request *request,
      int tcode, int destination, int source,
      int generation,
      unsigned long long addr,
      void *data, size_t len,
      void *callback_data)
{
 struct fwserial_mgmt_pkt *pkt = data;
 struct fwtty_peer *peer;
 int rcode;

 rcu_read_lock();
 peer = __fwserial_peer_by_node_id(card, generation, source);
 if (!peer) {
  fwtty_dbg(card, "peer(%d:%x) not found\n", generation, source);
  __dump_peer_list(card);
  rcode = RCODE_CONFLICT_ERROR;

 } else {
  switch (tcode) {
  case 128:
   rcode = fwserial_parse_mgmt_write(peer, pkt, addr, len);
   break;

  default:
   rcode = RCODE_TYPE_ERROR;
  }
 }

 rcu_read_unlock();
 fw_send_response(card, request, rcode);
}
