
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int roles; } ;
struct fc_rport_priv {TYPE_1__ ids; } ;
struct fc_lport {int service_params; } ;


 int FCP_SPPF_INIT_FCN ;
 int FCP_SPPF_TARG_FCN ;
 int FC_PORT_ROLE_FCP_INITIATOR ;
 int FC_PORT_ROLE_FCP_TARGET ;
 int FC_PORT_ROLE_UNKNOWN ;

__attribute__((used)) static bool
fc_rport_compatible_roles(struct fc_lport *lport, struct fc_rport_priv *rdata)
{
 if (rdata->ids.roles == FC_PORT_ROLE_UNKNOWN)
  return 1;
 if ((rdata->ids.roles & FC_PORT_ROLE_FCP_TARGET) &&
     (lport->service_params & FCP_SPPF_INIT_FCN))
  return 1;
 if ((rdata->ids.roles & FC_PORT_ROLE_FCP_INITIATOR) &&
     (lport->service_params & FCP_SPPF_TARG_FCN))
  return 1;
 return 0;
}
