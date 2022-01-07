
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qeth_card {int dummy; } ;


 int EEXIST ;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int EPERM ;





 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;

__attribute__((used)) static int qeth_l2_setdelvlan_makerc(struct qeth_card *card, u16 retcode)
{
 if (retcode)
  QETH_CARD_TEXT_(card, 2, "err%04x", retcode);

 switch (retcode) {
 case 128:
  return 0;
 case 131:
  return -EINVAL;
 case 132:
  return -EEXIST;
 case 129:
  return -ENOENT;
 case 130:
  return -EPERM;
 default:
  return -EIO;
 }
}
