
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int back; } ;
union cvmx_buf_ptr {TYPE_1__ s; } ;


 void* cvmx_phys_to_ptr (int) ;

__attribute__((used)) static inline void *cvm_oct_get_buffer_ptr(union cvmx_buf_ptr packet_ptr)
{
 return cvmx_phys_to_ptr(((packet_ptr.s.addr >> 7) - packet_ptr.s.back)
    << 7);
}
