
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int dummy; } ;


 int TP_PIO_ADDR_A ;
 int TP_PIO_DATA_A ;
 unsigned int csio_rd_reg32 (struct csio_hw*,int ) ;
 int csio_wr_reg32 (struct csio_hw*,unsigned int,int ) ;

void
csio_hw_tp_wr_bits_indirect(struct csio_hw *hw, unsigned int addr,
   unsigned int mask, unsigned int val)
{
 csio_wr_reg32(hw, addr, TP_PIO_ADDR_A);
 val |= csio_rd_reg32(hw, TP_PIO_DATA_A) & ~mask;
 csio_wr_reg32(hw, val, TP_PIO_DATA_A);
}
