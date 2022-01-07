
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PIDXR ;
 int outb (unsigned char,int ) ;
 int udelay (int) ;

__attribute__((used)) static inline void write_address(unsigned char x)
{
 outb(x, _PIDXR);
 udelay(20);
}
