
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xlr_net_priv {int adapter; int ndev; int base_addr; TYPE_1__* nd; } ;
struct xlr_fmn_info {int start_stn_id; int end_stn_id; int* credit_config; } ;
struct TYPE_2__ {int* bucket_size; struct xlr_fmn_info* gmac_fmn_info; } ;


 scalar_t__ R_CC_CPU0_0 ;
 scalar_t__ R_DMACR0 ;
 scalar_t__ R_DMACR1 ;
 scalar_t__ R_DMACR2 ;
 scalar_t__ R_DMACR3 ;
 scalar_t__ R_FREEQCARVE ;
 scalar_t__ R_GMAC_RFR0_BUCKET_SIZE ;
 scalar_t__ R_MSG_TX_THRESHOLD ;
 int nlm_register_fmn_handler (int,int,int ,int ) ;
 int xlr_nae_wreg (int ,scalar_t__,int) ;
 int xlr_net_fill_rx_ring (int ) ;
 int xlr_net_fmn_handler ;

__attribute__((used)) static int xlr_config_common(struct xlr_net_priv *priv)
{
 struct xlr_fmn_info *gmac = priv->nd->gmac_fmn_info;
 int start_stn_id = gmac->start_stn_id;
 int end_stn_id = gmac->end_stn_id;
 int *bucket_size = priv->nd->bucket_size;
 int i, j, err;


 for (i = start_stn_id; i <= end_stn_id; i++) {
  xlr_nae_wreg(priv->base_addr,
        R_GMAC_RFR0_BUCKET_SIZE + i - start_stn_id,
        bucket_size[i]);
 }





 for (i = 0; i < 8; i++) {
  for (j = 0; j < 8; j++)
   xlr_nae_wreg(priv->base_addr,
         (R_CC_CPU0_0 + (i * 8)) + j,
         gmac->credit_config[(i * 8) + j]);
 }

 xlr_nae_wreg(priv->base_addr, R_MSG_TX_THRESHOLD, 3);
 xlr_nae_wreg(priv->base_addr, R_DMACR0, 0xffffffff);
 xlr_nae_wreg(priv->base_addr, R_DMACR1, 0xffffffff);
 xlr_nae_wreg(priv->base_addr, R_DMACR2, 0xffffffff);
 xlr_nae_wreg(priv->base_addr, R_DMACR3, 0xffffffff);
 xlr_nae_wreg(priv->base_addr, R_FREEQCARVE, 0);

 err = xlr_net_fill_rx_ring(priv->ndev);
 if (err)
  return err;
 nlm_register_fmn_handler(start_stn_id, end_stn_id, xlr_net_fmn_handler,
     priv->adapter);
 return 0;
}
