
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ohci_hcd {int dummy; } ;


 int * portstatus ;
 int read_roothub (struct ohci_hcd*,int ,int) ;

__attribute__((used)) static inline u32 roothub_portstatus (struct ohci_hcd *hc, int i)
 { return read_roothub (hc, portstatus [i], 0xffe0fce0); }
