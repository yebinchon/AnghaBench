
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct matrox_device {int port_data; int port_index; } ;


 int barrier () ;
 int readb (int ) ;
 int writeb (int ,int ) ;

__attribute__((used)) static __inline__ u8 matrox_w1_read_reg(struct matrox_device *dev, u8 reg)
{
 u8 ret;

 writeb(reg, dev->port_index);
 ret = readb(dev->port_data);
 barrier();

 return ret;
}
