
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ht_priv {int ampdu_enable; scalar_t__ ht_option; } ;
struct mlme_priv {scalar_t__ num_sta_no_ht; scalar_t__ num_FortyMHzIntolerant; struct ht_priv htpriv; } ;
struct TYPE_2__ {int wifi_spec; } ;
struct adapter {TYPE_1__ registrypriv; struct mlme_priv mlmepriv; } ;


 int HW_VAR_RXDMA_AGG_PG_TH ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int*) ;

void rtw_joinbss_reset(struct adapter *padapter)
{
 u8 threshold;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 struct ht_priv *phtpriv = &pmlmepriv->htpriv;



 pmlmepriv->num_FortyMHzIntolerant = 0;

 pmlmepriv->num_sta_no_ht = 0;

 phtpriv->ampdu_enable = 0;



 if (phtpriv->ht_option) {
  if (padapter->registrypriv.wifi_spec == 1)
   threshold = 1;
  else
   threshold = 0;
  rtw_hal_set_hwreg(padapter, HW_VAR_RXDMA_AGG_PG_TH, (u8 *)(&threshold));
 } else {
  threshold = 1;
  rtw_hal_set_hwreg(padapter, HW_VAR_RXDMA_AGG_PG_TH, (u8 *)(&threshold));
 }
}
