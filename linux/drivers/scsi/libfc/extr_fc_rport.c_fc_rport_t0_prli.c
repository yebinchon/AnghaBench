
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fc_rport_priv {int dummy; } ;
struct fc_els_spp {int spp_flags; } ;


 int FC_SPP_EST_IMG_PAIR ;
 int FC_SPP_RESP_ACK ;
 int FC_SPP_RESP_INVL ;

__attribute__((used)) static int fc_rport_t0_prli(struct fc_rport_priv *rdata, u32 spp_len,
       const struct fc_els_spp *rspp,
       struct fc_els_spp *spp)
{
 if (rspp->spp_flags & FC_SPP_EST_IMG_PAIR)
  return FC_SPP_RESP_INVL;
 return FC_SPP_RESP_ACK;
}
