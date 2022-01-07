
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct yenta_socket {int dev; } ;


 int debug (char*,struct yenta_socket*,unsigned int,int ) ;
 int pci_read_config_byte (int ,unsigned int,int *) ;

__attribute__((used)) static inline u8 config_readb(struct yenta_socket *socket, unsigned offset)
{
 u8 val;
 pci_read_config_byte(socket->dev, offset, &val);
 debug("%04x %02x\n", socket, offset, val);
 return val;
}
