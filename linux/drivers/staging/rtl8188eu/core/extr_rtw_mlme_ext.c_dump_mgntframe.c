
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_frame {int dummy; } ;
struct adapter {scalar_t__ bDriverStopped; scalar_t__ bSurpriseRemoved; } ;


 int rtw_hal_mgnt_xmit (struct adapter*,struct xmit_frame*) ;

__attribute__((used)) static void dump_mgntframe(struct adapter *padapter,
      struct xmit_frame *pmgntframe)
{
 if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
  return;

 rtw_hal_mgnt_xmit(padapter, pmgntframe);
}
