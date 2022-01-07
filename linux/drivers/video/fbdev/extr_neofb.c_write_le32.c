
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct neofb_par {scalar_t__ cursorOff; scalar_t__ neo2200; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void write_le32(int regindex, u32 val, const struct neofb_par *par)
{
 writel(val, par->neo2200 + par->cursorOff + regindex);
}
