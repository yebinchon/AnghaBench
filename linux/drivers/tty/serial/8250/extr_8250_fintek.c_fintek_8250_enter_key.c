
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;


 scalar_t__ ADDR_PORT ;
 int EBUSY ;
 int EXIT_KEY ;
 int outb (int ,scalar_t__) ;
 int request_muxed_region (scalar_t__,int,char*) ;

__attribute__((used)) static int fintek_8250_enter_key(u16 base_port, u8 key)
{
 if (!request_muxed_region(base_port, 2, "8250_fintek"))
  return -EBUSY;


 outb(EXIT_KEY, base_port + ADDR_PORT);

 outb(key, base_port + ADDR_PORT);
 outb(key, base_port + ADDR_PORT);
 return 0;
}
