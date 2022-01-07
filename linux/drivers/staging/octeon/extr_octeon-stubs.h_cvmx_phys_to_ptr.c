
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static inline void *cvmx_phys_to_ptr(uint64_t physical_address)
{
 return (void *)(uintptr_t)(physical_address);
}
