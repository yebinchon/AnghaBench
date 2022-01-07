
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hostnotification; scalar_t__ reflect_promisc; scalar_t__ role; } ;
struct TYPE_4__ {TYPE_1__ sbp; } ;
struct qeth_card {TYPE_2__ options; } ;



__attribute__((used)) static bool qeth_bridgeport_is_in_use(struct qeth_card *card)
{
 return (card->options.sbp.role || card->options.sbp.reflect_promisc ||
  card->options.sbp.hostnotification);
}
