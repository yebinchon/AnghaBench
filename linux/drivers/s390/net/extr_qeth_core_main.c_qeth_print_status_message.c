
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; int* mcl_level; } ;
struct qeth_card {TYPE_2__ info; TYPE_1__* gdev; } ;
typedef size_t __u8 ;
struct TYPE_3__ {int dev; } ;


 int IS_VM_NIC (struct qeth_card*) ;




 size_t QETH_MCL_LENGTH ;
 scalar_t__* _ebcasc ;
 int dev_info (int *,char*,int ,char*,char*,char*,int ) ;
 int memset (char*,int ,int ) ;
 int qeth_get_cardname (struct qeth_card*) ;
 int qeth_get_cardname_short (struct qeth_card*) ;
 int sprintf (int*,char*,int,int) ;

void qeth_print_status_message(struct qeth_card *card)
{
 switch (card->info.type) {
 case 130:
 case 129:
 case 128:




  if (!card->info.mcl_level[0]) {
   sprintf(card->info.mcl_level, "%02x%02x",
    card->info.mcl_level[2],
    card->info.mcl_level[3]);
   break;
  }

 case 131:
  if (IS_VM_NIC(card) || (card->info.mcl_level[0] & 0x80)) {
   card->info.mcl_level[0] = (char) _ebcasc[(__u8)
    card->info.mcl_level[0]];
   card->info.mcl_level[1] = (char) _ebcasc[(__u8)
    card->info.mcl_level[1]];
   card->info.mcl_level[2] = (char) _ebcasc[(__u8)
    card->info.mcl_level[2]];
   card->info.mcl_level[3] = (char) _ebcasc[(__u8)
    card->info.mcl_level[3]];
   card->info.mcl_level[QETH_MCL_LENGTH] = 0;
  }
  break;
 default:
  memset(&card->info.mcl_level[0], 0, QETH_MCL_LENGTH + 1);
 }
 dev_info(&card->gdev->dev,
   "Device is a%s card%s%s%s\nwith link type %s.\n",
   qeth_get_cardname(card),
   (card->info.mcl_level[0]) ? " (level: " : "",
   (card->info.mcl_level[0]) ? card->info.mcl_level : "",
   (card->info.mcl_level[0]) ? ")" : "",
   qeth_get_cardname_short(card));
}
