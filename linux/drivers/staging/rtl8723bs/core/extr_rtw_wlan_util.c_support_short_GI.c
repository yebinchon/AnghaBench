
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlme_ext_info {int HT_enable; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;
struct TYPE_3__ {int HT_caps_info; } ;
struct TYPE_4__ {TYPE_1__ HT_cap_element; } ;
struct HT_caps_element {TYPE_2__ u; } ;


 int CHANNEL_WIDTH_40 ;
 int _FAIL ;
 int _SUCCESS ;
 int le16_to_cpu (int ) ;

int support_short_GI(struct adapter *padapter, struct HT_caps_element *pHT_caps, u8 bwmode)
{
 unsigned char bit_offset;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);

 if (!(pmlmeinfo->HT_enable))
  return _FAIL;

 bit_offset = (bwmode & CHANNEL_WIDTH_40) ? 6 : 5;

 if (le16_to_cpu(pHT_caps->u.HT_cap_element.HT_caps_info) & (0x1 << bit_offset))
  return _SUCCESS;
 else
  return _FAIL;
}
