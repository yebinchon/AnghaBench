
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbc_port {int write_fifo; } ;


 unsigned int kfifo_len (int *) ;
 unsigned int kfifo_out (int *,char*,unsigned int) ;

__attribute__((used)) static unsigned int
dbc_send_packet(struct dbc_port *port, char *packet, unsigned int size)
{
 unsigned int len;

 len = kfifo_len(&port->write_fifo);
 if (len < size)
  size = len;
 if (size != 0)
  size = kfifo_out(&port->write_fifo, packet, size);
 return size;
}
