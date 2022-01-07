
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; int mapbase; } ;
struct sci_port {int reg_size; } ;
struct resource {int dummy; } ;


 int EBUSY ;
 int dev_err (int ,char*) ;
 int dev_name (int ) ;
 int release_resource (struct resource*) ;
 struct resource* request_mem_region (int ,int ,int ) ;
 int sci_remap_port (struct uart_port*) ;
 struct sci_port* to_sci_port (struct uart_port*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sci_request_port(struct uart_port *port)
{
 struct resource *res;
 struct sci_port *sport = to_sci_port(port);
 int ret;

 res = request_mem_region(port->mapbase, sport->reg_size,
     dev_name(port->dev));
 if (unlikely(res == ((void*)0))) {
  dev_err(port->dev, "request_mem_region failed.");
  return -EBUSY;
 }

 ret = sci_remap_port(port);
 if (unlikely(ret != 0)) {
  release_resource(res);
  return ret;
 }

 return 0;
}
