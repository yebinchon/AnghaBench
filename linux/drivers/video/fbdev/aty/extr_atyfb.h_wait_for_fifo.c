
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct atyfb_par {unsigned int fifo_space; } ;


 int FIFO_STAT ;
 int aty_ld_le32 (int ,struct atyfb_par*) ;
 int fls (int) ;

__attribute__((used)) static inline void wait_for_fifo(u16 entries, struct atyfb_par *par)
{
 unsigned fifo_space = par->fifo_space;
 while (entries > fifo_space) {
  fifo_space = 16 - fls(aty_ld_le32(FIFO_STAT, par) & 0xffff);
 }
 par->fifo_space = fifo_space - entries;
}
