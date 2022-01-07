
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qspi_trans {scalar_t__ byte; TYPE_2__* trans; } ;
struct bcm_qspi {TYPE_1__* pdev; } ;
struct TYPE_4__ {int bits_per_word; scalar_t__ len; scalar_t__ cs_change; scalar_t__ delay_usecs; } ;
struct TYPE_3__ {int dev; } ;


 int TRANS_STATUS_BREAK_CS_CHANGE ;
 int TRANS_STATUS_BREAK_DELAY ;
 int TRANS_STATUS_BREAK_EOM ;
 int TRANS_STATUS_BREAK_NONE ;
 int TRANS_STATUS_BREAK_NO_BYTES ;
 scalar_t__ bcm_qspi_mspi_transfer_is_last (struct bcm_qspi*,struct qspi_trans*) ;
 int dev_dbg (int *,char*,...) ;

__attribute__((used)) static int update_qspi_trans_byte_count(struct bcm_qspi *qspi,
     struct qspi_trans *qt, int flags)
{
 int ret = TRANS_STATUS_BREAK_NONE;


 if (qt->trans->bits_per_word <= 8)
  qt->byte++;
 else
  qt->byte += 2;

 if (qt->byte >= qt->trans->len) {


  if (qt->trans->delay_usecs &&
      (flags & TRANS_STATUS_BREAK_DELAY))
   ret |= TRANS_STATUS_BREAK_DELAY;
  if (qt->trans->cs_change &&
      (flags & TRANS_STATUS_BREAK_CS_CHANGE))
   ret |= TRANS_STATUS_BREAK_CS_CHANGE;
  if (ret)
   goto done;

  dev_dbg(&qspi->pdev->dev, "advance msg exit\n");
  if (bcm_qspi_mspi_transfer_is_last(qspi, qt))
   ret = TRANS_STATUS_BREAK_EOM;
  else
   ret = TRANS_STATUS_BREAK_NO_BYTES;

  qt->trans = ((void*)0);
 }

done:
 dev_dbg(&qspi->pdev->dev, "trans %p len %d byte %d ret %x\n",
  qt->trans, qt->trans ? qt->trans->len : 0, qt->byte, ret);
 return ret;
}
