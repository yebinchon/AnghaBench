
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qeth_card {int dummy; } ;


 int EEXIST ;
 int EIO ;
 int ENOENT ;
 int ENOSPC ;
 int EOPNOTSUPP ;
 int EPERM ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;

__attribute__((used)) static int qeth_l2_setdelmac_makerc(struct qeth_card *card, u16 retcode)
{
 int rc;

 if (retcode)
  QETH_CARD_TEXT_(card, 2, "err%04x", retcode);
 switch (retcode) {
 case 128:
  rc = 0;
  break;
 case 129:
  rc = -EOPNOTSUPP;
  break;
 case 135:
  rc = -ENOSPC;
  break;
 case 133:
 case 134:
  rc = -EEXIST;
  break;
 case 131:
 case 132:
  rc = -EPERM;
  break;
 case 130:
  rc = -ENOENT;
  break;
 default:
  rc = -EIO;
  break;
 }
 return rc;
}
