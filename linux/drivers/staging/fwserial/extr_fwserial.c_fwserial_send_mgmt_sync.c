
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fwtty_peer {int generation; int unit; int mgmt_addr; int speed; int node_id; TYPE_2__* serial; } ;
struct TYPE_3__ {int len; } ;
struct fwserial_mgmt_pkt {TYPE_1__ hdr; } ;
struct TYPE_4__ {int card; } ;


 int RCODE_BUSY ;
 int RCODE_GENERATION ;
 int RCODE_SEND_ERROR ;
 int TCODE_WRITE_BLOCK_REQUEST ;
 int be16_to_cpu (int ) ;
 int fw_run_transaction (int ,int ,int ,int,int ,int ,struct fwserial_mgmt_pkt*,int ) ;
 int fwtty_dbg (int *,char*,int) ;
 int smp_rmb () ;

__attribute__((used)) static inline int fwserial_send_mgmt_sync(struct fwtty_peer *peer,
       struct fwserial_mgmt_pkt *pkt)
{
 int generation;
 int rcode, tries = 5;

 do {
  generation = peer->generation;
  smp_rmb();

  rcode = fw_run_transaction(peer->serial->card,
        TCODE_WRITE_BLOCK_REQUEST,
        peer->node_id,
        generation, peer->speed,
        peer->mgmt_addr,
        pkt, be16_to_cpu(pkt->hdr.len));
  if (rcode == RCODE_BUSY || rcode == RCODE_SEND_ERROR ||
      rcode == RCODE_GENERATION) {
   fwtty_dbg(&peer->unit, "mgmt write error: %d\n", rcode);
   continue;
  } else {
   break;
  }
 } while (--tries > 0);
 return rcode;
}
