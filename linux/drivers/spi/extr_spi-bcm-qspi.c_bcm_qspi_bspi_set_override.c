
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int opcode; } ;
struct TYPE_6__ {int nbytes; } ;
struct TYPE_5__ {int buswidth; } ;
struct spi_mem_op {TYPE_4__ cmd; TYPE_2__ addr; TYPE_1__ data; } ;
struct bcm_qspi {TYPE_3__* pdev; } ;
struct TYPE_7__ {int dev; } ;


 int BSPI ;
 int BSPI_ADDRLEN_4BYTES ;
 int BSPI_STRAP_OVERRIDE_CTRL ;
 int BSPI_STRAP_OVERRIDE_CTRL_ADDR_4BYTE ;
 int BSPI_STRAP_OVERRIDE_CTRL_DATA_DUAL ;
 int BSPI_STRAP_OVERRIDE_CTRL_DATA_QUAD ;
 int BSPI_STRAP_OVERRIDE_CTRL_OVERRIDE ;
 int EINVAL ;



 int bcm_qspi_bspi_set_xfer_params (struct bcm_qspi*,int ,int ,int ,int ) ;
 int bcm_qspi_read (struct bcm_qspi*,int ,int ) ;
 int bcm_qspi_write (struct bcm_qspi*,int ,int ,int) ;
 int dev_dbg (int *,char*,int,int,int) ;

__attribute__((used)) static int bcm_qspi_bspi_set_override(struct bcm_qspi *qspi,
          const struct spi_mem_op *op, int hp)
{
 int width = op->data.buswidth ? op->data.buswidth : 128;
 int addrlen = op->addr.nbytes;
 u32 data = bcm_qspi_read(qspi, BSPI, BSPI_STRAP_OVERRIDE_CTRL);

 dev_dbg(&qspi->pdev->dev, "set override mode w %x addrlen %x hp %d\n",
  width, addrlen, hp);

 switch (width) {
 case 128:

  data &= ~(BSPI_STRAP_OVERRIDE_CTRL_DATA_QUAD |
     BSPI_STRAP_OVERRIDE_CTRL_DATA_DUAL);
  break;
 case 129:

  data &= ~BSPI_STRAP_OVERRIDE_CTRL_DATA_DUAL;
  data |= BSPI_STRAP_OVERRIDE_CTRL_DATA_QUAD;
  break;
 case 130:

  data &= ~BSPI_STRAP_OVERRIDE_CTRL_DATA_QUAD;
  data |= BSPI_STRAP_OVERRIDE_CTRL_DATA_DUAL;
  break;
 default:
  return -EINVAL;
 }

 if (addrlen == BSPI_ADDRLEN_4BYTES)

  data |= BSPI_STRAP_OVERRIDE_CTRL_ADDR_4BYTE;
 else

  data &= ~BSPI_STRAP_OVERRIDE_CTRL_ADDR_4BYTE;


 data |= BSPI_STRAP_OVERRIDE_CTRL_OVERRIDE;
 bcm_qspi_write(qspi, BSPI, BSPI_STRAP_OVERRIDE_CTRL, data);
 bcm_qspi_bspi_set_xfer_params(qspi, op->cmd.opcode, 0, 0, 0);

 return 0;
}
