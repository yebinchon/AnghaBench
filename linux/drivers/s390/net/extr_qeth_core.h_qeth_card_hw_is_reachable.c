
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {scalar_t__ state; } ;


 scalar_t__ CARD_STATE_SOFTSETUP ;

__attribute__((used)) static inline bool qeth_card_hw_is_reachable(struct qeth_card *card)
{
 return card->state == CARD_STATE_SOFTSETUP;
}
