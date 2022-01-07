
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct mlme_ext_priv {unsigned char cur_channel; unsigned char cur_bwmode; unsigned char cur_ch_offset; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int DBG_871X (char*,unsigned char,unsigned char,unsigned char) ;
 int _FAIL ;
 int _SUCCESS ;
 int rtw_warn_on (int) ;

int rtw_chk_start_clnt_join(struct adapter *padapter, u8 *ch, u8 *bw, u8 *offset)
{
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 unsigned char cur_ch = pmlmeext->cur_channel;
 unsigned char cur_bw = pmlmeext->cur_bwmode;
 unsigned char cur_ch_offset = pmlmeext->cur_ch_offset;
 bool connect_allow = 1;

 if (!ch || !bw || !offset) {
  rtw_warn_on(1);
  connect_allow = 0;
 }

 if (connect_allow) {
  DBG_871X("start_join_set_ch_bw: ch =%d, bwmode =%d, ch_offset =%d\n", cur_ch, cur_bw, cur_ch_offset);
  *ch = cur_ch;
  *bw = cur_bw;
  *offset = cur_ch_offset;
 }

 return connect_allow ? _SUCCESS : _FAIL;
}
