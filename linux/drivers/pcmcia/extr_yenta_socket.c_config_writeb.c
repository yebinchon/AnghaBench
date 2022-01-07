
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct yenta_socket {int dev; } ;


 int debug (char*,struct yenta_socket*,unsigned int,int ) ;
 int pci_write_config_byte (int ,unsigned int,int ) ;

__attribute__((used)) static inline void config_writeb(struct yenta_socket *socket, unsigned offset, u8 val)
{
 debug("%04x %02x\n", socket, offset, val);
 pci_write_config_byte(socket->dev, offset, val);
}
