
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct savagefb_par {int dummy; } ;


 int savage_in16 (int,struct savagefb_par*) ;

__attribute__((used)) static inline u16 vga_in16(int addr, struct savagefb_par *par)
{
 return savage_in16(0x8000 + addr, par);
}
