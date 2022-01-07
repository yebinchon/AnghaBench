
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct yenta_socket {unsigned int base; } ;


 int debug (char*,struct yenta_socket*,unsigned int,int ) ;
 int readb (unsigned int) ;
 int writeb (int ,unsigned int) ;

__attribute__((used)) static inline void exca_writeb(struct yenta_socket *socket, unsigned reg, u8 val)
{
 debug("%04x %02x\n", socket, reg, val);
 writeb(val, socket->base + 0x800 + reg);
 readb(socket->base + 0x800 + reg);
}
