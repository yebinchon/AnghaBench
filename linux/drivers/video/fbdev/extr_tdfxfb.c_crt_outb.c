
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tdfx_par {int dummy; } ;


 int CRT_D ;
 int CRT_I ;
 int vga_outb (struct tdfx_par*,int ,int ) ;
 int wmb () ;

__attribute__((used)) static inline void crt_outb(struct tdfx_par *par, u32 idx, u8 val)
{
 vga_outb(par, CRT_I, idx);
 wmb();
 vga_outb(par, CRT_D, val);
 wmb();
}
