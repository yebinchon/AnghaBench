
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intelfb_info {scalar_t__ pipe; } ;


 int DBG_MSG (char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int OUTREG (scalar_t__,unsigned int) ;
 unsigned int PALETTE_8_BLUE_SHIFT ;
 unsigned int PALETTE_8_GREEN_SHIFT ;
 unsigned int PALETTE_8_RED_SHIFT ;
 scalar_t__ PALETTE_A ;
 scalar_t__ PALETTE_B ;
 scalar_t__ PIPE_A ;

void intelfbhw_setcolreg(struct intelfb_info *dinfo, unsigned regno,
    unsigned red, unsigned green, unsigned blue,
    unsigned transp)
{
 u32 palette_reg = (dinfo->pipe == PIPE_A) ?
     PALETTE_A : PALETTE_B;






 OUTREG(palette_reg + (regno << 2),
        (red << PALETTE_8_RED_SHIFT) |
        (green << PALETTE_8_GREEN_SHIFT) |
        (blue << PALETTE_8_BLUE_SHIFT));
}
