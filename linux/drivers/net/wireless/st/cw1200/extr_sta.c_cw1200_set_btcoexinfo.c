
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wsm_override_internal_txrate {void* nonErpInternalTxRate; void* internalTxRate; } ;
struct TYPE_6__ {int operational_rate_set; } ;
struct TYPE_5__ {int basic_rate_set; } ;
struct cw1200_common {scalar_t__ mode; TYPE_3__ bss_params; TYPE_2__ association_mode; TYPE_1__* vif; } ;
typedef int arg ;
struct TYPE_4__ {int p2p; } ;


 scalar_t__ NL80211_IFTYPE_STATION ;
 int WSM_MIB_ID_OVERRIDE_INTERNAL_TX_RATE ;
 void* __ffs (int) ;
 int cw1200_upload_null (struct cw1200_common*) ;
 int cw1200_upload_pspoll (struct cw1200_common*) ;
 int cw1200_upload_qosnull (struct cw1200_common*) ;
 int le32_to_cpu (int ) ;
 int memset (struct wsm_override_internal_txrate*,int ,int) ;
 int pr_debug (char*,...) ;
 int wsm_write_mib (struct cw1200_common*,int ,struct wsm_override_internal_txrate*,int) ;

__attribute__((used)) static int cw1200_set_btcoexinfo(struct cw1200_common *priv)
{
 struct wsm_override_internal_txrate arg;
 int ret = 0;

 if (priv->mode == NL80211_IFTYPE_STATION) {

  cw1200_upload_pspoll(priv);
  cw1200_upload_null(priv);
  cw1200_upload_qosnull(priv);
 } else {
  return 0;
 }

 memset(&arg, 0, sizeof(struct wsm_override_internal_txrate));

 if (!priv->vif->p2p) {

  if (priv->bss_params.operational_rate_set & ~0xF) {
   pr_debug("[STA] STA has ERP rates\n");

   arg.internalTxRate = (__ffs(
   priv->bss_params.operational_rate_set & ~0xF));
  } else {
   pr_debug("[STA] STA has non ERP rates\n");

   arg.internalTxRate = (__ffs(le32_to_cpu(priv->association_mode.basic_rate_set)));
  }
  arg.nonErpInternalTxRate = (__ffs(le32_to_cpu(priv->association_mode.basic_rate_set)));
 } else {

  arg.internalTxRate = (__ffs(priv->bss_params.operational_rate_set & ~0xF));
  arg.nonErpInternalTxRate = (__ffs(priv->bss_params.operational_rate_set & ~0xF));
 }

 pr_debug("[STA] BTCOEX_INFO MODE %d, internalTxRate : %x, nonErpInternalTxRate: %x\n",
   priv->mode,
   arg.internalTxRate,
   arg.nonErpInternalTxRate);

 ret = wsm_write_mib(priv, WSM_MIB_ID_OVERRIDE_INTERNAL_TX_RATE,
       &arg, sizeof(arg));

 return ret;
}
