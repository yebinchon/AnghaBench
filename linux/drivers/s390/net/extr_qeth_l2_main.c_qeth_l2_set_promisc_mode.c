
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ reflect_promisc; } ;
struct TYPE_8__ {TYPE_3__ sbp; } ;
struct TYPE_6__ {int promisc_mode; } ;
struct qeth_card {TYPE_4__ options; TYPE_2__ info; TYPE_1__* dev; } ;
struct TYPE_5__ {int flags; } ;


 int IFF_PROMISC ;
 int IPA_SETADP_SET_PROMISC_MODE ;
 scalar_t__ qeth_adp_supported (struct qeth_card*,int ) ;
 int qeth_l2_promisc_to_bridge (struct qeth_card*,int) ;
 int qeth_setadp_promisc_mode (struct qeth_card*,int) ;

__attribute__((used)) static void qeth_l2_set_promisc_mode(struct qeth_card *card)
{
 bool enable = card->dev->flags & IFF_PROMISC;

 if (card->info.promisc_mode == enable)
  return;

 if (qeth_adp_supported(card, IPA_SETADP_SET_PROMISC_MODE))
  qeth_setadp_promisc_mode(card, enable);
 else if (card->options.sbp.reflect_promisc)
  qeth_l2_promisc_to_bridge(card, enable);
}
