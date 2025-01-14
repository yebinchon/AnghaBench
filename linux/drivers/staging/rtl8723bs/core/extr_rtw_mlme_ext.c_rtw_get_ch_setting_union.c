
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dvobj_priv {struct adapter* padapters; } ;
struct adapter {int mlmepriv; } ;


 scalar_t__ CHANNEL_WIDTH_20 ;
 scalar_t__ HAL_PRIME_CHNL_OFFSET_DONT_CARE ;
 int _FW_LINKED ;
 int _FW_UNDER_LINKING ;
 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;
 int check_fwstate (int *,int) ;

int rtw_get_ch_setting_union(struct adapter *adapter, u8 *ch, u8 *bw, u8 *offset)
{
 struct dvobj_priv *dvobj = adapter_to_dvobj(adapter);
 struct adapter *iface;

 if (ch)
  *ch = 0;
 if (bw)
  *bw = CHANNEL_WIDTH_20;
 if (offset)
  *offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;

 iface = dvobj->padapters;

 if (!check_fwstate(&iface->mlmepriv, _FW_LINKED|_FW_UNDER_LINKING))
  return 0;

 return 1;
}
