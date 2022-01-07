
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 scalar_t__ is_IBSS_empty (struct adapter*) ;
 scalar_t__ is_client_associated_to_ap (struct adapter*) ;
 int rtw_mlmeext_disconnect (struct adapter*) ;

void mlmeext_sta_del_event_callback(struct adapter *padapter)
{
 if (is_client_associated_to_ap(padapter) || is_IBSS_empty(padapter))
  rtw_mlmeext_disconnect(padapter);
}
