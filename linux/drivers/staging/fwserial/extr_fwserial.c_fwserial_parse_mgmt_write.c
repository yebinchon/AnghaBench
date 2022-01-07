
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fwtty_port {int dummy; } ;
struct TYPE_4__ {int plug_req; } ;
struct fwtty_peer {scalar_t__ state; int lock; int unit; int work; int workfn; struct fwtty_port* port; TYPE_1__ work_params; } ;
struct TYPE_5__ {int code; int len; } ;
struct fwserial_mgmt_pkt {TYPE_2__ hdr; int plug_rsp; int plug_req; } ;
struct TYPE_6__ {unsigned long long offset; } ;


 scalar_t__ FWPS_GONE ;
 scalar_t__ FWPS_PLUG_PENDING ;
 scalar_t__ FWPS_UNPLUG_PENDING ;
 int FWSC_CODE_MASK ;
 int FWSC_RSP_NACK ;




 int RCODE_ADDRESS_ERROR ;
 int RCODE_COMPLETE ;
 int RCODE_CONFLICT_ERROR ;
 int RCODE_DATA_ERROR ;
 int be16_to_cpu (int ) ;
 int fwserial_handle_plug_req ;
 int fwserial_handle_unplug_req ;
 TYPE_3__ fwserial_mgmt_addr_handler ;
 int fwserial_release_port (struct fwtty_port*,int) ;
 int fwserial_virt_plug_complete (struct fwtty_peer*,int *) ;
 int fwtty_dbg (int *,char*,int ) ;
 int fwtty_err (int *,char*,...) ;
 int fwtty_notice (int *,char*) ;
 int fwtty_write_port_status (struct fwtty_port*) ;
 size_t mgmt_pkt_expected_len (int ) ;
 struct fwtty_port* peer_revert_state (struct fwtty_peer*) ;
 int queue_work (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int system_unbound_wq ;
 int work_pending (int *) ;

__attribute__((used)) static int fwserial_parse_mgmt_write(struct fwtty_peer *peer,
         struct fwserial_mgmt_pkt *pkt,
         unsigned long long addr,
         size_t len)
{
 struct fwtty_port *port = ((void*)0);
 bool reset = 0;
 int rcode;

 if (addr != fwserial_mgmt_addr_handler.offset || len < sizeof(pkt->hdr))
  return RCODE_ADDRESS_ERROR;

 if (len != be16_to_cpu(pkt->hdr.len) ||
     len != mgmt_pkt_expected_len(pkt->hdr.code))
  return RCODE_DATA_ERROR;

 spin_lock_bh(&peer->lock);
 if (peer->state == FWPS_GONE) {






  fwtty_err(&peer->unit, "peer already removed\n");
  spin_unlock_bh(&peer->lock);
  return RCODE_ADDRESS_ERROR;
 }

 rcode = RCODE_COMPLETE;

 fwtty_dbg(&peer->unit, "mgmt: hdr.code: %04hx\n", pkt->hdr.code);

 switch (be16_to_cpu(pkt->hdr.code) & FWSC_CODE_MASK) {
 case 131:
  if (work_pending(&peer->work)) {
   fwtty_err(&peer->unit, "plug req: busy\n");
   rcode = RCODE_CONFLICT_ERROR;

  } else {
   peer->work_params.plug_req = pkt->plug_req;
   peer->workfn = fwserial_handle_plug_req;
   queue_work(system_unbound_wq, &peer->work);
  }
  break;

 case 130:
  if (peer->state != FWPS_PLUG_PENDING) {
   rcode = RCODE_CONFLICT_ERROR;

  } else if (be16_to_cpu(pkt->hdr.code) & FWSC_RSP_NACK) {
   fwtty_notice(&peer->unit, "NACK plug rsp\n");
   port = peer_revert_state(peer);

  } else {
   struct fwtty_port *tmp = peer->port;

   fwserial_virt_plug_complete(peer, &pkt->plug_rsp);
   spin_unlock_bh(&peer->lock);

   fwtty_write_port_status(tmp);
   spin_lock_bh(&peer->lock);
  }
  break;

 case 129:
  if (work_pending(&peer->work)) {
   fwtty_err(&peer->unit, "unplug req: busy\n");
   rcode = RCODE_CONFLICT_ERROR;
  } else {
   peer->workfn = fwserial_handle_unplug_req;
   queue_work(system_unbound_wq, &peer->work);
  }
  break;

 case 128:
  if (peer->state != FWPS_UNPLUG_PENDING) {
   rcode = RCODE_CONFLICT_ERROR;
  } else {
   if (be16_to_cpu(pkt->hdr.code) & FWSC_RSP_NACK)
    fwtty_notice(&peer->unit, "NACK unplug?\n");
   port = peer_revert_state(peer);
   reset = 1;
  }
  break;

 default:
  fwtty_err(&peer->unit, "unknown mgmt code %d\n",
     be16_to_cpu(pkt->hdr.code));
  rcode = RCODE_DATA_ERROR;
 }
 spin_unlock_bh(&peer->lock);

 if (port)
  fwserial_release_port(port, reset);

 return rcode;
}
