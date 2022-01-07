
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rsi_hw {int dummy; } ;


 int RSI_GSPI_CTRL_REG0 ;
 int RSI_GSPI_CTRL_REG0_VALUE ;
 int RSI_GSPI_CTRL_REG1 ;
 int RSI_GSPI_DATA_REG0 ;
 int RSI_GSPI_DATA_REG1 ;
 int RSI_GSPI_TRIG ;
 int msleep (int) ;
 int rsi_sdio_master_reg_write (struct rsi_hw*,int ,int,int) ;

__attribute__((used)) static void ulp_read_write(struct rsi_hw *adapter, u16 addr, u32 data,
      u16 len_in_bits)
{
 rsi_sdio_master_reg_write(adapter, RSI_GSPI_DATA_REG1,
      ((addr << 6) | ((data >> 16) & 0xffff)), 2);
 rsi_sdio_master_reg_write(adapter, RSI_GSPI_DATA_REG0,
      (data & 0xffff), 2);
 rsi_sdio_master_reg_write(adapter, RSI_GSPI_CTRL_REG0,
      RSI_GSPI_CTRL_REG0_VALUE, 2);
 rsi_sdio_master_reg_write(adapter, RSI_GSPI_CTRL_REG1,
      ((len_in_bits - 1) | RSI_GSPI_TRIG), 2);
 msleep(20);
}
