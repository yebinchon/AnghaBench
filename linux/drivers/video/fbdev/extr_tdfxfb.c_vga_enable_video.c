
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdfx_par {int dummy; } ;


 int seq_inb (struct tdfx_par*,int) ;
 int seq_outb (struct tdfx_par*,int,int) ;

__attribute__((used)) static inline void vga_enable_video(struct tdfx_par *par)
{
 unsigned char s;

 s = seq_inb(par, 0x01) & 0xdf;
 seq_outb(par, 0x00, 0x01);
 seq_outb(par, 0x01, s);
 seq_outb(par, 0x00, 0x03);
}
