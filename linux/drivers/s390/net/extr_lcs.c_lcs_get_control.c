
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcs_cmd {scalar_t__ initiator; int cmd_code; } ;
struct lcs_card {TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;





 int LCS_DBF_TEXT (int,int ,char*) ;
 scalar_t__ LCS_INITIATOR_LGW ;
 int lcs_notify_lancmd_waiters (struct lcs_card*,struct lcs_cmd*) ;
 int lcs_schedule_recovery (struct lcs_card*) ;
 int netif_carrier_off (TYPE_1__*) ;
 int pr_warn (char*,int ) ;
 int trace ;

__attribute__((used)) static void
lcs_get_control(struct lcs_card *card, struct lcs_cmd *cmd)
{
 LCS_DBF_TEXT(5, trace, "getctrl");
 if (cmd->initiator == LCS_INITIATOR_LGW) {
  switch(cmd->cmd_code) {
  case 129:
  case 130:
   lcs_schedule_recovery(card);
   break;
  case 128:
   pr_warn("Stoplan for %s initiated by LGW\n",
    card->dev->name);
   if (card->dev)
    netif_carrier_off(card->dev);
   break;
  default:
   LCS_DBF_TEXT(5, trace, "noLGWcmd");
   break;
  }
 } else
  lcs_notify_lancmd_waiters(card, cmd);
}
