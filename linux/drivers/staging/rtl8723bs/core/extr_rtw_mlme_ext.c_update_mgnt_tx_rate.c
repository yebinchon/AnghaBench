
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlme_ext_priv {int tx_rate; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;



void update_mgnt_tx_rate(struct adapter *padapter, u8 rate)
{
 struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);

 pmlmeext->tx_rate = rate;

}
