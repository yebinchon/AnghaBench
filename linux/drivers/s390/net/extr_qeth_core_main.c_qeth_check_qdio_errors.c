
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {int dummy; } ;
struct qdio_buffer {TYPE_1__* element; } ;
struct TYPE_2__ {unsigned int sflags; } ;


 int QETH_CARD_STAT_INC (struct qeth_card*,int ) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char const*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,unsigned int) ;
 int rx_dropped ;

__attribute__((used)) static int qeth_check_qdio_errors(struct qeth_card *card,
      struct qdio_buffer *buf,
      unsigned int qdio_error,
      const char *dbftext)
{
 if (qdio_error) {
  QETH_CARD_TEXT(card, 2, dbftext);
  QETH_CARD_TEXT_(card, 2, " F15=%02X",
          buf->element[15].sflags);
  QETH_CARD_TEXT_(card, 2, " F14=%02X",
          buf->element[14].sflags);
  QETH_CARD_TEXT_(card, 2, " qerr=%X", qdio_error);
  if ((buf->element[15].sflags) == 0x12) {
   QETH_CARD_STAT_INC(card, rx_dropped);
   return 0;
  } else
   return 1;
 }
 return 0;
}
