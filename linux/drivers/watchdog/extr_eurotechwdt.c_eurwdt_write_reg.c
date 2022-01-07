
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ io ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline void eurwdt_write_reg(u8 index, u8 data)
{
 outb(index, io);
 outb(data, io+1);
}
