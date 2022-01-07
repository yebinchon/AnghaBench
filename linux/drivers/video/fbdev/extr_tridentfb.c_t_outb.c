
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct tridentfb_par {scalar_t__ io_virt; } ;


 int fb_writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void t_outb(struct tridentfb_par *p, u8 val, u16 reg)
{
 fb_writeb(val, p->io_virt + reg);
}
