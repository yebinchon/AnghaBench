
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rio_mport {int dummy; } ;


 int RIO_OPS_ATOMIC_CLR ;
 int RIO_OPS_ATOMIC_DEC ;
 int RIO_OPS_ATOMIC_INC ;
 int RIO_OPS_ATOMIC_SET ;
 int RIO_OPS_ATOMIC_TST_SWP ;
 int RIO_OPS_READ ;
 int RIO_OPS_WRITE ;

__attribute__((used)) static int rio_device_has_destid(struct rio_mport *port, int src_ops,
     int dst_ops)
{
 u32 mask = RIO_OPS_READ | RIO_OPS_WRITE | RIO_OPS_ATOMIC_TST_SWP | RIO_OPS_ATOMIC_INC | RIO_OPS_ATOMIC_DEC | RIO_OPS_ATOMIC_SET | RIO_OPS_ATOMIC_CLR;

 return !!((src_ops | dst_ops) & mask);
}
