
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOPORT ;
 int outb (int,int ) ;

__attribute__((used)) static inline void close_io_config(void)
{
 outb(0xAA, IOPORT);
}
