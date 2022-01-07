
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int XEN_PCPU_FLAGS_ONLINE ;

__attribute__((used)) static bool xen_pcpu_online(uint32_t flags)
{
 return !!(flags & XEN_PCPU_FLAGS_ONLINE);
}
