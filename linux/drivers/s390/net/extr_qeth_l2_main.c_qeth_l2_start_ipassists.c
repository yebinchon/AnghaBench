
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;


 int ENODEV ;
 scalar_t__ qeth_set_access_ctrl_online (struct qeth_card*,int ) ;

__attribute__((used)) static int qeth_l2_start_ipassists(struct qeth_card *card)
{

 if (qeth_set_access_ctrl_online(card, 0))
  return -ENODEV;
 return 0;
}
