
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct tdfx_par {scalar_t__ iobase; } ;


 int inb (scalar_t__) ;

__attribute__((used)) static inline u8 vga_inb(struct tdfx_par *par, u32 reg)
{
 return inb(par->iobase + reg - 0x300);
}
