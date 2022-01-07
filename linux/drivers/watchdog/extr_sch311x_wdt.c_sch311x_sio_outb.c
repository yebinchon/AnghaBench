
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;

__attribute__((used)) static inline void sch311x_sio_outb(int sio_config_port, int reg, int val)
{
 outb(reg, sio_config_port);
 outb(val, sio_config_port + 1);
}
