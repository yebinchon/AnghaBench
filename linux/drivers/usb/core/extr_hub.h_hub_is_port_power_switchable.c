
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hub {TYPE_1__* descriptor; } ;
typedef int __le16 ;
struct TYPE_2__ {int wHubCharacteristics; } ;


 int HUB_CHAR_LPSM ;
 int HUB_CHAR_NO_LPSM ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline bool hub_is_port_power_switchable(struct usb_hub *hub)
{
 __le16 hcs;

 if (!hub)
  return 0;
 hcs = hub->descriptor->wHubCharacteristics;
 return (le16_to_cpu(hcs) & HUB_CHAR_LPSM) < HUB_CHAR_NO_LPSM;
}
