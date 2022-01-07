
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arcfb_par {int c2io_addr; } ;


 unsigned char inb (int ) ;

__attribute__((used)) static unsigned char ks108_readb_ctl2(struct arcfb_par *par)
{
 return inb(par->c2io_addr);
}
