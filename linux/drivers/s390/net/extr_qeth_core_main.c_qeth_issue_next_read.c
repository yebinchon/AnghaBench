
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;


 int CARD_RDEV (struct qeth_card*) ;
 int __qeth_issue_next_read (struct qeth_card*) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int qeth_issue_next_read(struct qeth_card *card)
{
 int ret;

 spin_lock_irq(get_ccwdev_lock(CARD_RDEV(card)));
 ret = __qeth_issue_next_read(card);
 spin_unlock_irq(get_ccwdev_lock(CARD_RDEV(card)));

 return ret;
}
