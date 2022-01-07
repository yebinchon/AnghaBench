
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fintek_8250 {scalar_t__ base_port; } ;


 scalar_t__ ADDR_PORT ;
 scalar_t__ DATA_PORT ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static u8 sio_read_reg(struct fintek_8250 *pdata, u8 reg)
{
 outb(reg, pdata->base_port + ADDR_PORT);
 return inb(pdata->base_port + DATA_PORT);
}
