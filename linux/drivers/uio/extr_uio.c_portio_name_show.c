
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_port {char* name; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t portio_name_show(struct uio_port *port, char *buf)
{
 if (unlikely(!port->name))
  port->name = "";

 return sprintf(buf, "%s\n", port->name);
}
