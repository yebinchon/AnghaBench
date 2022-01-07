
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PAGE_SIZE ;
 int PCI_BASE_ADDRESS_MEM_MASK ;
 int round_up (int,int ) ;

__attribute__((used)) static u64 get_bar_size(u64 bar_val)
{
 return round_up((1 + ~(bar_val & PCI_BASE_ADDRESS_MEM_MASK)),
   PAGE_SIZE);
}
