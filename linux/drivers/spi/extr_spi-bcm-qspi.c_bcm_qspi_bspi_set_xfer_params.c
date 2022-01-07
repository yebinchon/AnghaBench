
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bcm_qspi {int dummy; } ;


 int BSPI ;
 int BSPI_BITS_PER_CYCLE ;
 int BSPI_BITS_PER_PHASE ;
 int BSPI_CMD_AND_MODE_BYTE ;
 int BSPI_FLEX_MODE_ENABLE ;
 int bcm_qspi_write (struct bcm_qspi*,int ,int ,int) ;

__attribute__((used)) static void bcm_qspi_bspi_set_xfer_params(struct bcm_qspi *qspi, u8 cmd_byte,
       int bpp, int bpc, int flex_mode)
{
 bcm_qspi_write(qspi, BSPI, BSPI_FLEX_MODE_ENABLE, 0);
 bcm_qspi_write(qspi, BSPI, BSPI_BITS_PER_CYCLE, bpc);
 bcm_qspi_write(qspi, BSPI, BSPI_BITS_PER_PHASE, bpp);
 bcm_qspi_write(qspi, BSPI, BSPI_CMD_AND_MODE_BYTE, cmd_byte);
 bcm_qspi_write(qspi, BSPI, BSPI_FLEX_MODE_ENABLE, flex_mode);
}
