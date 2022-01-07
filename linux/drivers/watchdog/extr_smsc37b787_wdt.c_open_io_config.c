
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOPORT ;
 int mdelay (int) ;
 int outb (int,int ) ;

__attribute__((used)) static inline void open_io_config(void)
{
 outb(0x55, IOPORT);
 mdelay(1);
 outb(0x55, IOPORT);
}
