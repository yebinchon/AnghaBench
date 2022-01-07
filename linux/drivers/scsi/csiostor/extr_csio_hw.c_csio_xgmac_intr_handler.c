
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct csio_hw {int dummy; } ;


 int MAC_PORT_INT_CAUSE_A ;
 int RXFIFO_PRTY_ERR_F ;
 int T5_PORT_REG (int,int ) ;
 int TXFIFO_PRTY_ERR_F ;
 int csio_fatal (struct csio_hw*,char*,int) ;
 int csio_hw_fatal_err (struct csio_hw*) ;
 int csio_rd_reg32 (struct csio_hw*,int ) ;
 int csio_wr_reg32 (struct csio_hw*,int,int ) ;

__attribute__((used)) static void csio_xgmac_intr_handler(struct csio_hw *hw, int port)
{
 uint32_t v = csio_rd_reg32(hw, T5_PORT_REG(port, MAC_PORT_INT_CAUSE_A));

 v &= TXFIFO_PRTY_ERR_F | RXFIFO_PRTY_ERR_F;
 if (!v)
  return;

 if (v & TXFIFO_PRTY_ERR_F)
  csio_fatal(hw, "XGMAC %d Tx FIFO parity error\n", port);
 if (v & RXFIFO_PRTY_ERR_F)
  csio_fatal(hw, "XGMAC %d Rx FIFO parity error\n", port);
 csio_wr_reg32(hw, v, T5_PORT_REG(port, MAC_PORT_INT_CAUSE_A));
 csio_hw_fatal_err(hw);
}
