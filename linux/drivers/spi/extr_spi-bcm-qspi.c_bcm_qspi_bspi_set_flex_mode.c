
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {int nbytes; int buswidth; } ;
struct TYPE_8__ {int nbytes; } ;
struct TYPE_7__ {int buswidth; } ;
struct TYPE_6__ {int opcode; } ;
struct spi_mem_op {TYPE_5__ dummy; TYPE_3__ addr; TYPE_2__ data; TYPE_1__ cmd; } ;
struct bcm_qspi {TYPE_4__* pdev; } ;
struct TYPE_9__ {int dev; } ;


 int BSPI_ADDRLEN_3BYTES ;
 int BSPI_ADDRLEN_4BYTES ;
 int BSPI_BPP_ADDR_SELECT_MASK ;
 int BSPI_BPP_MODE_SELECT_MASK ;
 int EINVAL ;



 int bcm_qspi_bspi_set_xfer_params (struct bcm_qspi*,int ,int,int,int) ;
 int dev_dbg (int *,char*,int,int,int) ;

__attribute__((used)) static int bcm_qspi_bspi_set_flex_mode(struct bcm_qspi *qspi,
           const struct spi_mem_op *op, int hp)
{
 int bpc = 0, bpp = 0;
 u8 command = op->cmd.opcode;
 int width = op->data.buswidth ? op->data.buswidth : 128;
 int addrlen = op->addr.nbytes;
 int flex_mode = 1;

 dev_dbg(&qspi->pdev->dev, "set flex mode w %x addrlen %x hp %d\n",
  width, addrlen, hp);

 if (addrlen == BSPI_ADDRLEN_4BYTES)
  bpp = BSPI_BPP_ADDR_SELECT_MASK;

 bpp |= (op->dummy.nbytes * 8) / op->dummy.buswidth;

 switch (width) {
 case 128:
  if (addrlen == BSPI_ADDRLEN_3BYTES)

   flex_mode = 0;
  break;
 case 130:
  bpc = 0x00000001;
  if (hp) {
   bpc |= 0x00010100;
   bpp = BSPI_BPP_MODE_SELECT_MASK;
  }
  break;
 case 129:
  bpc = 0x00000002;
  if (hp) {
   bpc |= 0x00020200;
   bpp |= BSPI_BPP_MODE_SELECT_MASK;
  }
  break;
 default:
  return -EINVAL;
 }

 bcm_qspi_bspi_set_xfer_params(qspi, command, bpp, bpc, flex_mode);

 return 0;
}
