
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xilinx_spi {int (* read_fn ) (scalar_t__) ;scalar_t__ regs; int (* write_fn ) (int ,scalar_t__) ;} ;


 scalar_t__ XIPIF_V123B_RESETR_OFFSET ;
 int XIPIF_V123B_RESET_MASK ;
 scalar_t__ XSPI_SR_OFFSET ;
 int XSPI_SR_TX_FULL_MASK ;
 scalar_t__ XSPI_TXD_OFFSET ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (int ,scalar_t__) ;
 int stub3 (scalar_t__) ;

__attribute__((used)) static int xilinx_spi_find_buffer_size(struct xilinx_spi *xspi)
{
 u8 sr;
 int n_words = 0;





 xspi->write_fn(XIPIF_V123B_RESET_MASK,
  xspi->regs + XIPIF_V123B_RESETR_OFFSET);


 do {
  xspi->write_fn(0, xspi->regs + XSPI_TXD_OFFSET);
  sr = xspi->read_fn(xspi->regs + XSPI_SR_OFFSET);
  n_words++;
 } while (!(sr & XSPI_SR_TX_FULL_MASK));

 return n_words;
}
