
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int portno; int lan_type; } ;
struct TYPE_4__ {TYPE_1__ lcs_std_cmd; } ;
struct lcs_cmd {TYPE_2__ cmd; } ;
struct lcs_card {int portno; int lan_type; } ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 int trace ;

__attribute__((used)) static void
__lcs_send_startlan_cb(struct lcs_card *card, struct lcs_cmd *cmd)
{
 LCS_DBF_TEXT(2, trace, "srtlancb");
 card->lan_type = cmd->cmd.lcs_std_cmd.lan_type;
 card->portno = cmd->cmd.lcs_std_cmd.portno;
}
