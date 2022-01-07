
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* wanted_chars; int getset_timeout_sup; void* set_char_sup; int learning_timeout; void* cur_chars; void* sup_chars; } ;
struct TYPE_3__ {TYPE_2__ vnicc; } ;
struct qeth_card {TYPE_1__ options; } ;


 void* QETH_VNICC_ALL ;
 void* QETH_VNICC_DEFAULT ;
 int QETH_VNICC_DEFAULT_TIMEOUT ;
 int QETH_VNICC_LEARNING ;

__attribute__((used)) static void qeth_l2_vnicc_set_defaults(struct qeth_card *card)
{

 card->options.vnicc.sup_chars = QETH_VNICC_ALL;
 card->options.vnicc.cur_chars = QETH_VNICC_DEFAULT;
 card->options.vnicc.learning_timeout = QETH_VNICC_DEFAULT_TIMEOUT;

 card->options.vnicc.set_char_sup = QETH_VNICC_ALL;
 card->options.vnicc.getset_timeout_sup = QETH_VNICC_LEARNING;

 card->options.vnicc.wanted_chars = QETH_VNICC_DEFAULT;
}
