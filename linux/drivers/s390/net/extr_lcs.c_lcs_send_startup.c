
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buff_size; } ;
struct TYPE_4__ {TYPE_1__ lcs_startup; } ;
struct lcs_cmd {TYPE_2__ cmd; int initiator; int cmd_code; } ;
struct lcs_card {int dummy; } ;
struct lcs_buffer {scalar_t__ data; } ;
typedef int __u8 ;


 int LCS_CMD_STARTUP ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_IOBUFFERSIZE ;
 int LCS_STD_CMD_SIZE ;
 struct lcs_buffer* lcs_get_lancmd (struct lcs_card*,int ) ;
 int lcs_send_lancmd (struct lcs_card*,struct lcs_buffer*,int *) ;
 int trace ;

__attribute__((used)) static int
lcs_send_startup(struct lcs_card *card, __u8 initiator)
{
 struct lcs_buffer *buffer;
 struct lcs_cmd *cmd;

 LCS_DBF_TEXT(2, trace, "startup");
 buffer = lcs_get_lancmd(card, LCS_STD_CMD_SIZE);
 cmd = (struct lcs_cmd *) buffer->data;
 cmd->cmd_code = LCS_CMD_STARTUP;
 cmd->initiator = initiator;
 cmd->cmd.lcs_startup.buff_size = LCS_IOBUFFERSIZE;
 return lcs_send_lancmd(card, buffer, ((void*)0));
}
