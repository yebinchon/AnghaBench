
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_2__ {int dev; } ;


 int EAGAIN ;
 int EIO ;
 int EOPNOTSUPP ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int qeth_anset_makerc(struct qeth_card *card, int pnso_rc, u16 response)
{
 int rc;

 if (pnso_rc == 0)
  switch (response) {
  case 0x0001:
   rc = 0;
   break;
  case 0x0004:
  case 0x0100:
  case 0x0106:
   rc = -EOPNOTSUPP;
   dev_err(&card->gdev->dev,
    "Setting address notification failed\n");
   break;
  case 0x0107:
   rc = -EAGAIN;
   break;
  default:
   rc = -EIO;
  }
 else
  rc = -EIO;

 if (rc) {
  QETH_CARD_TEXT_(card, 2, "SBPp%04x", pnso_rc);
  QETH_CARD_TEXT_(card, 2, "SBPr%04x", response);
 }
 return rc;
}
