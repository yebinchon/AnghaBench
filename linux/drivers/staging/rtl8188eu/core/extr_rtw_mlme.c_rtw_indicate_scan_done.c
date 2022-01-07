
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int indicate_wx_scan_complete_event (struct adapter*) ;

inline void rtw_indicate_scan_done(struct adapter *padapter, bool aborted)
{
 indicate_wx_scan_complete_event(padapter);
}
