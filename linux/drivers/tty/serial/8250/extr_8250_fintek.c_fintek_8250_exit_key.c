
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ ADDR_PORT ;
 int EXIT_KEY ;
 int outb (int ,scalar_t__) ;
 int release_region (scalar_t__,int) ;

__attribute__((used)) static void fintek_8250_exit_key(u16 base_port)
{

 outb(EXIT_KEY, base_port + ADDR_PORT);
 release_region(base_port + ADDR_PORT, 2);
}
