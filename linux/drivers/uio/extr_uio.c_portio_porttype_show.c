
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_port {size_t porttype; } ;
typedef int ssize_t ;


 int EINVAL ;
 size_t UIO_PORT_OTHER ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static ssize_t portio_porttype_show(struct uio_port *port, char *buf)
{
 const char *porttypes[] = {"none", "x86", "gpio", "other"};

 if ((port->porttype < 0) || (port->porttype > UIO_PORT_OTHER))
  return -EINVAL;

 return sprintf(buf, "port_%s\n", porttypes[port->porttype]);
}
