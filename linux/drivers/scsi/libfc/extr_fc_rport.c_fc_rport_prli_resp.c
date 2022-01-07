
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int temp_spp ;
struct fc_seq {int dummy; } ;
struct TYPE_2__ {int roles; } ;
struct fc_rport_priv {scalar_t__ rp_state; size_t spp_type; int kref; int rp_mutex; TYPE_1__ ids; int supported_classes; int flags; } ;
struct fc_frame {int dummy; } ;
struct fc_els_spp {int spp_flags; size_t spp_type; int spp_params; } ;
struct fc_els_prli {int prli_spp_len; } ;
struct fc_els_ls_rjt {int er_reason; size_t er_explan; } ;
struct fc4_prov {int (* prli ) (struct fc_rport_priv*,int,struct fc_els_spp*,struct fc_els_spp*) ;} ;
typedef enum fc_els_spp_resp { ____Placeholder_fc_els_spp_resp } fc_els_spp_resp ;


 scalar_t__ ELS_LS_ACC ;
 struct fc_frame* ERR_PTR (int ) ;
 int FCP_SPPF_CONF_COMPL ;
 int FCP_SPPF_INIT_FCN ;
 int FCP_SPPF_RETRY ;
 int FCP_SPPF_TARG_FCN ;
 int FC_COS_CLASS3 ;
 int FC_EX_CLOSED ;
 int FC_EX_ELS_RJT ;
 int FC_EX_SEQ_ERR ;
 int FC_RPORT_DBG (struct fc_rport_priv*,char*,...) ;
 int FC_RPORT_ROLE_FCP_INITIATOR ;
 int FC_RPORT_ROLE_FCP_TARGET ;
 void* FC_RPORT_ROLE_UNKNOWN ;
 int FC_RP_FLAGS_CONF_REQ ;
 int FC_RP_FLAGS_RETRY ;
 int FC_SPP_EST_IMG_PAIR ;
 int FC_SPP_RESP_ACK ;
 int FC_SPP_RESP_CONF ;
 int FC_SPP_RESP_MASK ;
 size_t FC_TYPE_FCP ;
 scalar_t__ IS_ERR (struct fc_frame*) ;
 int PTR_ERR (struct fc_frame*) ;
 scalar_t__ RPORT_ST_PRLI ;
 int fc_els_resp_type (struct fc_frame*) ;
 int fc_frame_free (struct fc_frame*) ;
 void* fc_frame_payload_get (struct fc_frame*,int) ;
 scalar_t__ fc_frame_payload_op (struct fc_frame*) ;
 struct fc4_prov** fc_passive_prov ;
 int fc_rport_destroy ;
 int fc_rport_enter_rtv (struct fc_rport_priv*) ;
 int fc_rport_error (struct fc_rport_priv*,int ) ;
 int fc_rport_error_retry (struct fc_rport_priv*,int ) ;
 int fc_rport_state (struct fc_rport_priv*) ;
 int kref_put (int *,int ) ;
 int memset (struct fc_els_spp*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ntohl (int ) ;
 int stub1 (struct fc_rport_priv*,int,struct fc_els_spp*,struct fc_els_spp*) ;

__attribute__((used)) static void fc_rport_prli_resp(struct fc_seq *sp, struct fc_frame *fp,
          void *rdata_arg)
{
 struct fc_rport_priv *rdata = rdata_arg;
 struct {
  struct fc_els_prli prli;
  struct fc_els_spp spp;
 } *pp;
 struct fc_els_spp temp_spp;
 struct fc_els_ls_rjt *rjt;
 struct fc4_prov *prov;
 u32 roles = FC_RPORT_ROLE_UNKNOWN;
 u32 fcp_parm = 0;
 u8 op;
 enum fc_els_spp_resp resp_code;

 FC_RPORT_DBG(rdata, "Received a PRLI %s\n", fc_els_resp_type(fp));

 if (fp == ERR_PTR(-FC_EX_CLOSED))
  goto put;

 mutex_lock(&rdata->rp_mutex);

 if (rdata->rp_state != RPORT_ST_PRLI) {
  FC_RPORT_DBG(rdata, "Received a PRLI response, but in state "
        "%s\n", fc_rport_state(rdata));
  if (IS_ERR(fp))
   goto err;
  goto out;
 }

 if (IS_ERR(fp)) {
  fc_rport_error_retry(rdata, PTR_ERR(fp));
  goto err;
 }


 rdata->ids.roles = FC_RPORT_ROLE_UNKNOWN;

 op = fc_frame_payload_op(fp);
 if (op == ELS_LS_ACC) {
  pp = fc_frame_payload_get(fp, sizeof(*pp));
  if (!pp) {
   fc_rport_error_retry(rdata, -FC_EX_SEQ_ERR);
   goto out;
  }

  resp_code = (pp->spp.spp_flags & FC_SPP_RESP_MASK);
  FC_RPORT_DBG(rdata, "PRLI spp_flags = 0x%x spp_type 0x%x\n",
        pp->spp.spp_flags, pp->spp.spp_type);
  rdata->spp_type = pp->spp.spp_type;
  if (resp_code != FC_SPP_RESP_ACK) {
   if (resp_code == FC_SPP_RESP_CONF)
    fc_rport_error(rdata, -FC_EX_SEQ_ERR);
   else
    fc_rport_error_retry(rdata, -FC_EX_SEQ_ERR);
   goto out;
  }
  if (pp->prli.prli_spp_len < sizeof(pp->spp)) {
   fc_rport_error_retry(rdata, -FC_EX_SEQ_ERR);
   goto out;
  }

  fcp_parm = ntohl(pp->spp.spp_params);
  if (fcp_parm & FCP_SPPF_RETRY)
   rdata->flags |= FC_RP_FLAGS_RETRY;
  if (fcp_parm & FCP_SPPF_CONF_COMPL)
   rdata->flags |= FC_RP_FLAGS_CONF_REQ;




  prov = fc_passive_prov[rdata->spp_type];
  if (prov) {
   memset(&temp_spp, 0, sizeof(temp_spp));
   prov->prli(rdata, pp->prli.prli_spp_len,
       &pp->spp, &temp_spp);
  }



  if (rdata->spp_type != FC_TYPE_FCP ||
      !(pp->spp.spp_flags & FC_SPP_EST_IMG_PAIR)) {



   fcp_parm &= ~FCP_SPPF_TARG_FCN;
  }
  rdata->supported_classes = FC_COS_CLASS3;
  if (fcp_parm & FCP_SPPF_INIT_FCN)
   roles |= FC_RPORT_ROLE_FCP_INITIATOR;
  if (fcp_parm & FCP_SPPF_TARG_FCN)
   roles |= FC_RPORT_ROLE_FCP_TARGET;

  rdata->ids.roles = roles;
  fc_rport_enter_rtv(rdata);

 } else {
  rjt = fc_frame_payload_get(fp, sizeof(*rjt));
  if (!rjt)
   FC_RPORT_DBG(rdata, "PRLI bad response\n");
  else
   FC_RPORT_DBG(rdata, "PRLI ELS rejected, reason %x expl %x\n",
         rjt->er_reason, rjt->er_explan);
  fc_rport_error_retry(rdata, FC_EX_ELS_RJT);
 }

out:
 fc_frame_free(fp);
err:
 mutex_unlock(&rdata->rp_mutex);
put:
 kref_put(&rdata->kref, fc_rport_destroy);
}
