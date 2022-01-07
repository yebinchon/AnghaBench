
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd6729_socket {int number; unsigned long io_base; } ;


 unsigned char inb (unsigned long) ;
 int outb (unsigned char,unsigned long) ;
 int port_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void indirect_resetbit(struct pd6729_socket *socket, unsigned short reg,
         unsigned char mask)
{
 unsigned long port;
 unsigned char val;
 unsigned long flags;

 spin_lock_irqsave(&port_lock, flags);
 reg = reg + socket->number * 0x40;
 port = socket->io_base;
 outb(reg, port);
 val = inb(port + 1);
 val &= ~mask;
 outb(reg, port);
 outb(val, port + 1);
 spin_unlock_irqrestore(&port_lock, flags);
}
