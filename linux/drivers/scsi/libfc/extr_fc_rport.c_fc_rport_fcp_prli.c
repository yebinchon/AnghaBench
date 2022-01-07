
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int roles; } ;
struct fc_rport_priv {int supported_classes; int flags; TYPE_1__ ids; struct fc_lport* local_port; } ;
struct fc_lport {int service_params; } ;
struct fc_els_spp {int spp_flags; int spp_params; } ;


 int FCP_SPPF_INIT_FCN ;
 int FCP_SPPF_RETRY ;
 int FCP_SPPF_TARG_FCN ;
 int FC_COS_CLASS3 ;
 int FC_RPORT_ROLE_FCP_INITIATOR ;
 int FC_RPORT_ROLE_FCP_TARGET ;
 int FC_RPORT_ROLE_UNKNOWN ;
 int FC_RP_FLAGS_RETRY ;
 int FC_SPP_EST_IMG_PAIR ;
 int FC_SPP_RESP_ACK ;
 int htonl (int) ;
 int ntohl (int ) ;

__attribute__((used)) static int fc_rport_fcp_prli(struct fc_rport_priv *rdata, u32 spp_len,
        const struct fc_els_spp *rspp,
        struct fc_els_spp *spp)
{
 struct fc_lport *lport = rdata->local_port;
 u32 fcp_parm;

 fcp_parm = ntohl(rspp->spp_params);
 rdata->ids.roles = FC_RPORT_ROLE_UNKNOWN;
 if (fcp_parm & FCP_SPPF_INIT_FCN)
  rdata->ids.roles |= FC_RPORT_ROLE_FCP_INITIATOR;
 if (fcp_parm & FCP_SPPF_TARG_FCN)
  rdata->ids.roles |= FC_RPORT_ROLE_FCP_TARGET;
 if (fcp_parm & FCP_SPPF_RETRY)
  rdata->flags |= FC_RP_FLAGS_RETRY;
 rdata->supported_classes = FC_COS_CLASS3;

 if (!(lport->service_params & FCP_SPPF_INIT_FCN))
  return 0;

 spp->spp_flags |= rspp->spp_flags & FC_SPP_EST_IMG_PAIR;




 fcp_parm = ntohl(spp->spp_params);
 spp->spp_params = htonl(fcp_parm | lport->service_params);
 return FC_SPP_RESP_ACK;
}
