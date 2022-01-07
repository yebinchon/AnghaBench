
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int capability; } ;
struct rtllib_device {TYPE_1__ current_network; } ;
struct cb_desc {int bUseShortPreamble; int data_rate; } ;


 int WLAN_CAPABILITY_SHORT_PREAMBLE ;

__attribute__((used)) static void rtllib_qurey_ShortPreambleMode(struct rtllib_device *ieee,
        struct cb_desc *tcb_desc)
{
 tcb_desc->bUseShortPreamble = 0;
 if (tcb_desc->data_rate == 2)
  return;
 else if (ieee->current_network.capability &
   WLAN_CAPABILITY_SHORT_PREAMBLE)
  tcb_desc->bUseShortPreamble = 1;
}
