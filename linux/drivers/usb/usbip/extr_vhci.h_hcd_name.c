
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* bus_name; } ;
struct usb_hcd {TYPE_1__ self; } ;



__attribute__((used)) static inline const char *hcd_name(struct usb_hcd *hcd)
{
 return (hcd)->self.bus_name;
}
