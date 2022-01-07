
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uhci_td {void* buffer; void* token; void* status; } ;
struct uhci_hcd {int dummy; } ;


 void* cpu_to_hc32 (struct uhci_hcd*,int ) ;

__attribute__((used)) static inline void uhci_fill_td(struct uhci_hcd *uhci, struct uhci_td *td,
  u32 status, u32 token, u32 buffer)
{
 td->status = cpu_to_hc32(uhci, status);
 td->token = cpu_to_hc32(uhci, token);
 td->buffer = cpu_to_hc32(uhci, buffer);
}
