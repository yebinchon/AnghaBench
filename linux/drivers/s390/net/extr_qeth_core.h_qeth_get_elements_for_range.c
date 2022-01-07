
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addr_t ;


 int PFN_DOWN (int ) ;
 int PFN_UP (int ) ;

__attribute__((used)) static inline int qeth_get_elements_for_range(addr_t start, addr_t end)
{
 return PFN_UP(end) - PFN_DOWN(start);
}
