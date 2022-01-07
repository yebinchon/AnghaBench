
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct csio_hw {int dummy; } ;


 int csio_rd_reg32 (struct csio_hw*,int) ;
 int csio_wr_reg32 (struct csio_hw*,int,int) ;

void
csio_set_reg_field(struct csio_hw *hw, uint32_t reg, uint32_t mask,
     uint32_t value)
{
 uint32_t val = csio_rd_reg32(hw, reg) & ~mask;

 csio_wr_reg32(hw, val | value, reg);

 csio_rd_reg32(hw, reg);

}
