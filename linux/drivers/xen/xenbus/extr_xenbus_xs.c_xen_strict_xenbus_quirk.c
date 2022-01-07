
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int cpuid (int,int*,int*,int*,int*) ;
 int xen_cpuid_base () ;

__attribute__((used)) static bool xen_strict_xenbus_quirk(void)
{
 return 0;

}
