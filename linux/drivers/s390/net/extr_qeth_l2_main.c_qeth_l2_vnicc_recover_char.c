
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int sup_chars; int set_char_sup; int wanted_chars; } ;
struct TYPE_4__ {TYPE_1__ vnicc; } ;
struct qeth_card {TYPE_2__ options; } ;


 int IPA_VNICC_DISABLE ;
 int IPA_VNICC_ENABLE ;
 int QETH_VNICC_DEFAULT ;
 int qeth_l2_vnicc_set_char (struct qeth_card*,int,int) ;

__attribute__((used)) static bool qeth_l2_vnicc_recover_char(struct qeth_card *card, u32 vnicc,
           bool enable)
{
 u32 cmd = enable ? IPA_VNICC_ENABLE : IPA_VNICC_DISABLE;

 if (card->options.vnicc.sup_chars & vnicc &&
     card->options.vnicc.set_char_sup & vnicc &&
     !qeth_l2_vnicc_set_char(card, vnicc, cmd))
  return 0;
 card->options.vnicc.wanted_chars &= ~vnicc;
 card->options.vnicc.wanted_chars |= QETH_VNICC_DEFAULT & vnicc;
 return 1;
}
