
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_rport_libfc_priv {struct fc_lport* local_port; } ;
struct fc_rport {int port_id; struct fc_rport_libfc_priv* dd_data; } ;
struct TYPE_2__ {int (* exch_mgr_reset ) (struct fc_lport*,int ,int ) ;} ;
struct fc_lport {TYPE_1__ tt; } ;


 int stub1 (struct fc_lport*,int ,int ) ;
 int stub2 (struct fc_lport*,int ,int ) ;

void fc_rport_terminate_io(struct fc_rport *rport)
{
 struct fc_rport_libfc_priv *rpriv = rport->dd_data;
 struct fc_lport *lport = rpriv->local_port;

 lport->tt.exch_mgr_reset(lport, 0, rport->port_id);
 lport->tt.exch_mgr_reset(lport, rport->port_id, 0);
}
