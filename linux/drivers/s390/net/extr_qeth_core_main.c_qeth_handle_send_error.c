
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct qeth_qdio_out_buffer {TYPE_2__* buffer; } ;
struct qeth_card {int dummy; } ;
struct TYPE_4__ {TYPE_1__* element; } ;
struct TYPE_3__ {int sflags; } ;


 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int ,int ) ;
 int qeth_check_qdio_errors (struct qeth_card*,TYPE_2__*,unsigned int,char*) ;

__attribute__((used)) static void qeth_handle_send_error(struct qeth_card *card,
  struct qeth_qdio_out_buffer *buffer, unsigned int qdio_err)
{
 int sbalf15 = buffer->buffer->element[15].sflags;

 QETH_CARD_TEXT(card, 6, "hdsnderr");
 qeth_check_qdio_errors(card, buffer->buffer, qdio_err, "qouterr");

 if (!qdio_err)
  return;

 if ((sbalf15 >= 15) && (sbalf15 <= 31))
  return;

 QETH_CARD_TEXT(card, 1, "lnkfail");
 QETH_CARD_TEXT_(card, 1, "%04x %02x",
         (u16)qdio_err, (u8)sbalf15);
}
