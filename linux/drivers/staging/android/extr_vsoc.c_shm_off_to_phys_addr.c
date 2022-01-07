
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ phys_addr_t ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {scalar_t__ shm_phys_start; } ;


 TYPE_1__ vsoc_dev ;

__attribute__((used)) static inline phys_addr_t shm_off_to_phys_addr(__u32 offset)
{
 return vsoc_dev.shm_phys_start + offset;
}
