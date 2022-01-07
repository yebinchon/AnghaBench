
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {scalar_t__ is_aspeed; } ;


 int CONFIG_USB_UHCI_ASPEED ;
 scalar_t__ IS_ENABLED (int ) ;

__attribute__((used)) static inline bool uhci_is_aspeed(const struct uhci_hcd *uhci)
{
 return IS_ENABLED(CONFIG_USB_UHCI_ASPEED) && uhci->is_aspeed;
}
