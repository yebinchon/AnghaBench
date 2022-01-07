
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hub {TYPE_1__* descriptor; } ;
struct TYPE_2__ {int bPwrOn2PwrGood; } ;


 int max (unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned hub_power_on_good_delay(struct usb_hub *hub)
{
 unsigned delay = hub->descriptor->bPwrOn2PwrGood * 2;


 return max(delay, 100U);
}
