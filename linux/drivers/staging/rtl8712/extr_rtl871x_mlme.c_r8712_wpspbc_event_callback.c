
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int wps_hw_pbc_pressed; } ;
struct _adapter {TYPE_1__ securitypriv; } ;



void r8712_wpspbc_event_callback(struct _adapter *adapter, u8 *pbuf)
{
 if (!adapter->securitypriv.wps_hw_pbc_pressed)
  adapter->securitypriv.wps_hw_pbc_pressed = 1;
}
