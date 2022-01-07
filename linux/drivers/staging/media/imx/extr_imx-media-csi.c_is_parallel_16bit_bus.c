
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bus_width; } ;
struct TYPE_4__ {TYPE_1__ parallel; } ;
struct v4l2_fwnode_endpoint {TYPE_2__ bus; } ;


 scalar_t__ is_parallel_bus (struct v4l2_fwnode_endpoint*) ;

__attribute__((used)) static inline bool is_parallel_16bit_bus(struct v4l2_fwnode_endpoint *ep)
{
 return is_parallel_bus(ep) && ep->bus.parallel.bus_width >= 16;
}
