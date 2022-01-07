
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_port {int port_write_buf; } ;


 unsigned int kfifo_len (int *) ;
 unsigned int kfifo_out (int *,char*,unsigned int) ;

__attribute__((used)) static unsigned
gs_send_packet(struct gs_port *port, char *packet, unsigned size)
{
 unsigned len;

 len = kfifo_len(&port->port_write_buf);
 if (len < size)
  size = len;
 if (size != 0)
  size = kfifo_out(&port->port_write_buf, packet, size);
 return size;
}
