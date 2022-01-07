
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcc_port {scalar_t__ removed; } ;


 struct vcc_port* vcc_get (unsigned long,int) ;
 int vcc_put (struct vcc_port*,int) ;

__attribute__((used)) static struct vcc_port *vcc_get_ne(unsigned long index)
{
 struct vcc_port *port;

 port = vcc_get(index, 0);

 if (port && port->removed) {
  vcc_put(port, 0);
  return ((void*)0);
 }

 return port;
}
