
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fwnode_endpoint {scalar_t__ bus_type; } ;


 scalar_t__ V4L2_MBUS_CSI2_DPHY ;

__attribute__((used)) static inline bool is_parallel_bus(struct v4l2_fwnode_endpoint *ep)
{
 return ep->bus_type != V4L2_MBUS_CSI2_DPHY;
}
