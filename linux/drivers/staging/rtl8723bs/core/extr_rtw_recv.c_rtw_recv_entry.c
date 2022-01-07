
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct adapter* adapter; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
struct recv_priv {int rx_pkts; } ;
struct adapter {struct recv_priv recvpriv; } ;
typedef scalar_t__ s32 ;


 int RT_TRACE (int ,int ,char*) ;
 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 int _drv_info_ ;
 int _module_rtl871x_recv_c_ ;
 scalar_t__ recv_func (struct adapter*,union recv_frame*) ;

s32 rtw_recv_entry(union recv_frame *precvframe)
{
 struct adapter *padapter;
 struct recv_priv *precvpriv;
 s32 ret = _SUCCESS;



 padapter = precvframe->u.hdr.adapter;

 precvpriv = &padapter->recvpriv;

 ret = recv_func(padapter, precvframe);
 if (ret == _FAIL) {
  RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("rtw_recv_entry: recv_func return fail!!!\n"));
  goto _recv_entry_drop;
 }


 precvpriv->rx_pkts++;

 return ret;

_recv_entry_drop:



 return ret;
}
