
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int fls (int ) ;

unsigned int xhci_last_valid_endpoint(u32 added_ctxs)
{
 return fls(added_ctxs) - 1;
}
