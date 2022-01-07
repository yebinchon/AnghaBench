
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _adapter {int pnetdev; } ;


 int netif_carrier_on (int ) ;
 int r8712_indicate_wx_assoc_event (struct _adapter*) ;

void r8712_os_indicate_connect(struct _adapter *adapter)
{
 r8712_indicate_wx_assoc_event(adapter);
 netif_carrier_on(adapter->pnetdev);
}
