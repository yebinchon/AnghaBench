
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qeth_card {int dummy; } ;


 int EACCES ;
 int EALREADY ;
 int EBUSY ;
 int EIO ;
 int ENOSPC ;
 int EOPNOTSUPP ;







 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;

__attribute__((used)) static int qeth_l2_vnicc_makerc(struct qeth_card *card, u16 ipa_rc)
{
 int rc;

 switch (ipa_rc) {
 case 130:
  return ipa_rc;
 case 132:
 case 131:
  rc = -EOPNOTSUPP;
  break;
 case 129:
  rc = -EALREADY;
  break;
 case 128:
  rc = -EBUSY;
  break;
 case 134:
  rc = -ENOSPC;
  break;
 case 133:
  rc = -EACCES;
  break;
 default:
  rc = -EIO;
 }

 QETH_CARD_TEXT_(card, 2, "err%04x", ipa_rc);
 return rc;
}
