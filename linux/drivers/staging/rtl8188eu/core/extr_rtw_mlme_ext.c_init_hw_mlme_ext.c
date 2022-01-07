
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_ext_priv {int cur_bwmode; int cur_ch_offset; int cur_channel; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int _SUCCESS ;
 int set_channel_bwmode (struct adapter*,int ,int ,int ) ;

int init_hw_mlme_ext(struct adapter *padapter)
{
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;

 set_channel_bwmode(padapter, pmlmeext->cur_channel, pmlmeext->cur_ch_offset, pmlmeext->cur_bwmode);
 return _SUCCESS;
}
