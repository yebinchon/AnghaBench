
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_frame {int * pkt; } ;
struct adapter {int dummy; } ;


 int rtw_os_pkt_complete (struct adapter*,int *) ;

void rtw_os_xmit_complete(struct adapter *padapter, struct xmit_frame *pxframe)
{
 if (pxframe->pkt)
  rtw_os_pkt_complete(padapter, pxframe->pkt);

 pxframe->pkt = ((void*)0);
}
