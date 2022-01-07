
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_6__ {int * ctl_src_addr; } ;
struct fnic {scalar_t__ state; int fnic_lock; TYPE_1__* lport; TYPE_3__ ctlr; } ;
struct fc_lport {int host; } ;
struct fc_frame {int dummy; } ;
struct TYPE_5__ {int * granted_mac; } ;
struct TYPE_4__ {int host; } ;


 int FNIC_FCS_DBG (int ,int ,char*,int ,...) ;
 scalar_t__ FNIC_IN_ETH_MODE ;
 scalar_t__ FNIC_IN_ETH_TRANS_FC_MODE ;
 scalar_t__ FNIC_IN_FC_MODE ;
 int KERN_DEBUG ;
 int fcoe_ctlr_recv_flogi (TYPE_3__*,struct fc_lport*,struct fc_frame*) ;
 int fnic_flogi_reg_handler (struct fnic*,int ) ;
 int fnic_set_eth_mode (struct fnic*) ;
 int fnic_state_to_str (scalar_t__) ;
 int fnic_update_mac (struct fc_lport*,int *) ;
 TYPE_2__* fr_cb (struct fc_frame*) ;
 scalar_t__ is_zero_ether_addr (int *) ;
 struct fnic* lport_priv (struct fc_lport*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void fnic_set_port_id(struct fc_lport *lport, u32 port_id, struct fc_frame *fp)
{
 struct fnic *fnic = lport_priv(lport);
 u8 *mac;
 int ret;

 FNIC_FCS_DBG(KERN_DEBUG, lport->host, "set port_id %x fp %p\n",
       port_id, fp);





 if (!port_id) {
  fnic_update_mac(lport, fnic->ctlr.ctl_src_addr);
  fnic_set_eth_mode(fnic);
  return;
 }

 if (fp) {
  mac = fr_cb(fp)->granted_mac;
  if (is_zero_ether_addr(mac)) {

   fcoe_ctlr_recv_flogi(&fnic->ctlr, lport, fp);
  }
  fnic_update_mac(lport, mac);
 }


 spin_lock_irq(&fnic->fnic_lock);
 if (fnic->state == FNIC_IN_ETH_MODE || fnic->state == FNIC_IN_FC_MODE)
  fnic->state = FNIC_IN_ETH_TRANS_FC_MODE;
 else {
  FNIC_FCS_DBG(KERN_DEBUG, fnic->lport->host,
        "Unexpected fnic state %s while"
        " processing flogi resp\n",
        fnic_state_to_str(fnic->state));
  spin_unlock_irq(&fnic->fnic_lock);
  return;
 }
 spin_unlock_irq(&fnic->fnic_lock);





 ret = fnic_flogi_reg_handler(fnic, port_id);

 if (ret < 0) {
  spin_lock_irq(&fnic->fnic_lock);
  if (fnic->state == FNIC_IN_ETH_TRANS_FC_MODE)
   fnic->state = FNIC_IN_ETH_MODE;
  spin_unlock_irq(&fnic->fnic_lock);
 }
}
