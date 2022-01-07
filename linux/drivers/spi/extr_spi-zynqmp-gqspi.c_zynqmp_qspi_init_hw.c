
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynqmp_qspi {int dummy; } ;


 int GQSPI_CFG_BAUD_RATE_DIV_MASK ;
 int GQSPI_CFG_CLK_PHA_MASK ;
 int GQSPI_CFG_CLK_POL_MASK ;
 int GQSPI_CFG_ENDIAN_MASK ;
 int GQSPI_CFG_EN_POLL_TO_MASK ;
 int GQSPI_CFG_GEN_FIFO_START_MODE_MASK ;
 int GQSPI_CFG_MODE_EN_MASK ;
 int GQSPI_CFG_WP_HOLD_MASK ;
 int GQSPI_CONFIG_OFST ;
 int GQSPI_EN_MASK ;
 int GQSPI_EN_OFST ;
 int GQSPI_FIFO_CTRL_OFST ;
 int GQSPI_FIFO_CTRL_RST_GEN_FIFO_MASK ;
 int GQSPI_FIFO_CTRL_RST_RX_FIFO_MASK ;
 int GQSPI_FIFO_CTRL_RST_TX_FIFO_MASK ;
 int GQSPI_GEN_FIFO_THRESHOLD_RESET_VAL ;
 int GQSPI_GF_THRESHOLD_OFST ;
 int GQSPI_IDR_ALL_MASK ;
 int GQSPI_IDR_OFST ;
 int GQSPI_ISR_OFST ;
 int GQSPI_ISR_WR_TO_CLR_MASK ;
 int GQSPI_LPBK_DLY_ADJ_OFST ;
 int GQSPI_LPBK_DLY_ADJ_USE_LPBK_MASK ;
 int GQSPI_QSPIDMA_DST_CTRL_OFST ;
 int GQSPI_QSPIDMA_DST_CTRL_RESET_VAL ;
 int GQSPI_QSPIDMA_DST_INTR_ALL_MASK ;
 int GQSPI_QSPIDMA_DST_I_DIS_OFST ;
 int GQSPI_QSPIDMA_DST_I_STS_OFST ;
 int GQSPI_QSPIDMA_DST_STS_OFST ;
 int GQSPI_QSPIDMA_DST_STS_WTC ;
 int GQSPI_RX_FIFO_THRESHOLD ;
 int GQSPI_RX_THRESHOLD_OFST ;
 int GQSPI_SELECT_FLASH_BUS_LOWER ;
 int GQSPI_SELECT_FLASH_CS_LOWER ;
 int GQSPI_SEL_MASK ;
 int GQSPI_SEL_OFST ;
 int GQSPI_TX_FIFO_THRESHOLD_RESET_VAL ;
 int GQSPI_TX_THRESHOLD_OFST ;
 int zynqmp_gqspi_read (struct zynqmp_qspi*,int ) ;
 int zynqmp_gqspi_selectslave (struct zynqmp_qspi*,int ,int ) ;
 int zynqmp_gqspi_write (struct zynqmp_qspi*,int ,int) ;

__attribute__((used)) static void zynqmp_qspi_init_hw(struct zynqmp_qspi *xqspi)
{
 u32 config_reg;


 zynqmp_gqspi_write(xqspi, GQSPI_SEL_OFST, GQSPI_SEL_MASK);

 zynqmp_gqspi_write(xqspi, GQSPI_ISR_OFST,
      zynqmp_gqspi_read(xqspi, GQSPI_ISR_OFST) |
      GQSPI_ISR_WR_TO_CLR_MASK);

 zynqmp_gqspi_write(xqspi, GQSPI_QSPIDMA_DST_I_STS_OFST,
      zynqmp_gqspi_read(xqspi,
          GQSPI_QSPIDMA_DST_I_STS_OFST));
 zynqmp_gqspi_write(xqspi, GQSPI_QSPIDMA_DST_STS_OFST,
      zynqmp_gqspi_read(xqspi,
          GQSPI_QSPIDMA_DST_STS_OFST) |
          GQSPI_QSPIDMA_DST_STS_WTC);
 zynqmp_gqspi_write(xqspi, GQSPI_IDR_OFST, GQSPI_IDR_ALL_MASK);
 zynqmp_gqspi_write(xqspi,
      GQSPI_QSPIDMA_DST_I_DIS_OFST,
      GQSPI_QSPIDMA_DST_INTR_ALL_MASK);

 zynqmp_gqspi_write(xqspi, GQSPI_EN_OFST, 0x0);
 config_reg = zynqmp_gqspi_read(xqspi, GQSPI_CONFIG_OFST);
 config_reg &= ~GQSPI_CFG_MODE_EN_MASK;

 config_reg |= GQSPI_CFG_GEN_FIFO_START_MODE_MASK;

 config_reg &= ~GQSPI_CFG_ENDIAN_MASK;

 config_reg &= ~GQSPI_CFG_EN_POLL_TO_MASK;

 config_reg |= GQSPI_CFG_WP_HOLD_MASK;

 config_reg &= ~GQSPI_CFG_BAUD_RATE_DIV_MASK;

 config_reg &= ~GQSPI_CFG_CLK_PHA_MASK;

 config_reg &= ~GQSPI_CFG_CLK_POL_MASK;
 zynqmp_gqspi_write(xqspi, GQSPI_CONFIG_OFST, config_reg);


 zynqmp_gqspi_write(xqspi, GQSPI_FIFO_CTRL_OFST,
      GQSPI_FIFO_CTRL_RST_RX_FIFO_MASK |
      GQSPI_FIFO_CTRL_RST_TX_FIFO_MASK |
      GQSPI_FIFO_CTRL_RST_GEN_FIFO_MASK);

 zynqmp_gqspi_write(xqspi, GQSPI_LPBK_DLY_ADJ_OFST,
      zynqmp_gqspi_read(xqspi, GQSPI_LPBK_DLY_ADJ_OFST) |
      GQSPI_LPBK_DLY_ADJ_USE_LPBK_MASK);

 zynqmp_gqspi_write(xqspi, GQSPI_TX_THRESHOLD_OFST,
      GQSPI_TX_FIFO_THRESHOLD_RESET_VAL);
 zynqmp_gqspi_write(xqspi, GQSPI_RX_THRESHOLD_OFST,
      GQSPI_RX_FIFO_THRESHOLD);
 zynqmp_gqspi_write(xqspi, GQSPI_GF_THRESHOLD_OFST,
      GQSPI_GEN_FIFO_THRESHOLD_RESET_VAL);
 zynqmp_gqspi_selectslave(xqspi,
     GQSPI_SELECT_FLASH_CS_LOWER,
     GQSPI_SELECT_FLASH_BUS_LOWER);

 zynqmp_gqspi_write(xqspi,
   GQSPI_QSPIDMA_DST_CTRL_OFST,
   GQSPI_QSPIDMA_DST_CTRL_RESET_VAL);


 zynqmp_gqspi_write(xqspi, GQSPI_EN_OFST, GQSPI_EN_MASK);
}
