
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fc_rport_priv {int dummy; } ;
struct fc_els_spp {int dummy; } ;


 int FC_SPP_RESP_INVL ;

__attribute__((used)) static int fc_lport_els_prli(struct fc_rport_priv *rdata, u32 spp_len,
        const struct fc_els_spp *spp_in,
        struct fc_els_spp *spp_out)
{
 return FC_SPP_RESP_INVL;
}
