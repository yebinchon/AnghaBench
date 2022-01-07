
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_io {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct nd_namespace_io*) ;
 struct nd_namespace_io* to_nd_namespace_io (struct device*) ;

__attribute__((used)) static void namespace_io_release(struct device *dev)
{
 struct nd_namespace_io *nsio = to_nd_namespace_io(dev);

 kfree(nsio);
}
