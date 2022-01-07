
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int truesize; } ;
typedef TYPE_1__ _pkt ;
typedef int _nic_hdl ;


 int MSTAT_ALLOC_SUCCESS ;
 int MSTAT_TYPE_SKB ;
 int _rtw_xmit_entry (TYPE_1__*,int ) ;
 int rtw_mstat_update (int ,int ,int ) ;

int rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
{
 int ret = 0;

 if (pkt) {
  rtw_mstat_update(MSTAT_TYPE_SKB, MSTAT_ALLOC_SUCCESS, pkt->truesize);
  ret = _rtw_xmit_entry(pkt, pnetdev);
 }

 return ret;
}
