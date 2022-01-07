
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct qeth_cmd_buffer {int data; int finalize; int length; } ;
struct TYPE_6__ {int cula; int unit_addr2; int func_level; } ;
struct TYPE_5__ {int issuer_rm_w; } ;
struct qeth_card {TYPE_3__ info; TYPE_2__ token; TYPE_1__* dev; } ;
struct ccw_dev_id {int devno; } ;
struct ccw1 {int dummy; } ;
struct TYPE_4__ {scalar_t__ dev_port; } ;


 int CARD_DDEV (struct qeth_card*) ;
 int CCW_CMD_READ ;
 int CCW_CMD_WRITE ;
 int CCW_FLAG_CC ;
 int IDX_ACTIVATE_SIZE ;
 int QETH_IDX_ACT_FUNC_LEVEL (int ) ;
 int QETH_IDX_ACT_ISSUER_RM_TOKEN (int ) ;
 int QETH_IDX_ACT_PNO (int ) ;
 int QETH_IDX_ACT_QDIO_DEV_CUA (int ) ;
 int QETH_IDX_ACT_QDIO_DEV_REALADDR (int ) ;
 int QETH_MPC_TOKEN_LENGTH ;
 struct ccw1* __ccw_from_cmd (struct qeth_cmd_buffer*) ;
 int ccw_device_get_id (int ,struct ccw_dev_id*) ;
 int memcpy (int ,int*,int) ;
 int qeth_idx_finalize_cmd ;
 int qeth_setup_ccw (struct ccw1*,int ,int ,int ,int ) ;

__attribute__((used)) static void qeth_idx_setup_activate_cmd(struct qeth_card *card,
     struct qeth_cmd_buffer *iob)
{
 u16 addr = (card->info.cula << 8) + card->info.unit_addr2;
 u8 port = ((u8)card->dev->dev_port) | 0x80;
 struct ccw1 *ccw = __ccw_from_cmd(iob);
 struct ccw_dev_id dev_id;

 qeth_setup_ccw(&ccw[0], CCW_CMD_WRITE, CCW_FLAG_CC, IDX_ACTIVATE_SIZE,
         iob->data);
 qeth_setup_ccw(&ccw[1], CCW_CMD_READ, 0, iob->length, iob->data);
 ccw_device_get_id(CARD_DDEV(card), &dev_id);
 iob->finalize = qeth_idx_finalize_cmd;

 memcpy(QETH_IDX_ACT_PNO(iob->data), &port, 1);
 memcpy(QETH_IDX_ACT_ISSUER_RM_TOKEN(iob->data),
        &card->token.issuer_rm_w, QETH_MPC_TOKEN_LENGTH);
 memcpy(QETH_IDX_ACT_FUNC_LEVEL(iob->data),
        &card->info.func_level, 2);
 memcpy(QETH_IDX_ACT_QDIO_DEV_CUA(iob->data), &dev_id.devno, 2);
 memcpy(QETH_IDX_ACT_QDIO_DEV_REALADDR(iob->data), &addr, 2);
}
