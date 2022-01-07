
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sup_chars; } ;
struct TYPE_4__ {int supported_funcs; } ;
struct TYPE_6__ {TYPE_2__ vnicc; TYPE_1__ sbp; } ;
struct qeth_card {TYPE_3__ options; } ;


 int QETH_CARD_HEX (struct qeth_card*,int,int *,int) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;

__attribute__((used)) static void qeth_l2_trace_features(struct qeth_card *card)
{

 QETH_CARD_TEXT(card, 2, "featuSBP");
 QETH_CARD_HEX(card, 2, &card->options.sbp.supported_funcs,
        sizeof(card->options.sbp.supported_funcs));

 QETH_CARD_TEXT(card, 2, "feaVNICC");
 QETH_CARD_HEX(card, 2, &card->options.vnicc.sup_chars,
        sizeof(card->options.vnicc.sup_chars));
}
