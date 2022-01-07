
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned short io_base; } ;


 unsigned char inb (unsigned short) ;
 int outb (unsigned short,unsigned short) ;
 int port_lock ;
 TYPE_1__* sockets ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned char indirect_read(int socket, unsigned short reg)
{
 unsigned short int port;
 unsigned char val;
 unsigned long flags;
 spin_lock_irqsave(&port_lock,flags);
 reg += socket * 0x40;
 port = sockets[socket].io_base;
 outb(reg,port);
 val = inb(port+1);
 spin_unlock_irqrestore(&port_lock,flags);
 return val;
}
