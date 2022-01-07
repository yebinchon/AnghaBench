
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct fcoe_ctlr {int dummy; } ;
struct fc_seq {int dummy; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {struct fc_lport* lp; } ;
struct TYPE_2__ {int * granted_mac; } ;


 scalar_t__ IS_ERR (struct fc_frame*) ;
 int fc_lport_flogi_resp (struct fc_seq*,struct fc_frame*,struct fc_lport*) ;
 struct fc_exch* fc_seq_exch (struct fc_seq*) ;
 int fcoe_ctlr_recv_flogi (struct fcoe_ctlr*,struct fc_lport*,struct fc_frame*) ;
 int fcoe_update_src_mac (struct fc_lport*,int *) ;
 TYPE_1__* fr_cb (struct fc_frame*) ;
 scalar_t__ is_zero_ether_addr (int *) ;

__attribute__((used)) static void fcoe_flogi_resp(struct fc_seq *seq, struct fc_frame *fp, void *arg)
{
 struct fcoe_ctlr *fip = arg;
 struct fc_exch *exch = fc_seq_exch(seq);
 struct fc_lport *lport = exch->lp;
 u8 *mac;

 if (IS_ERR(fp))
  goto done;

 mac = fr_cb(fp)->granted_mac;

 if (is_zero_ether_addr(mac))
  fcoe_ctlr_recv_flogi(fip, lport, fp);
 if (!is_zero_ether_addr(mac))
  fcoe_update_src_mac(lport, mac);
done:
 fc_lport_flogi_resp(seq, fp, lport);
}
