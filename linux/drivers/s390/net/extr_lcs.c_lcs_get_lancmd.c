
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcs_header {int dummy; } ;
struct lcs_cmd {int offset; scalar_t__ slot; int type; } ;
struct TYPE_2__ {int wait_q; } ;
struct lcs_card {TYPE_1__ write; } ;
struct lcs_buffer {int count; scalar_t__ data; int callback; } ;
typedef scalar_t__ __u16 ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_FRAME_TYPE_CONTROL ;
 struct lcs_buffer* lcs_get_buffer (TYPE_1__*) ;
 int lcs_release_buffer ;
 int trace ;
 int wait_event (int ,int ) ;

__attribute__((used)) static struct lcs_buffer *
lcs_get_lancmd(struct lcs_card *card, int count)
{
 struct lcs_buffer *buffer;
 struct lcs_cmd *cmd;

 LCS_DBF_TEXT(4, trace, "getlncmd");

 wait_event(card->write.wait_q,
     ((buffer = lcs_get_buffer(&card->write)) != ((void*)0)));
 count += sizeof(struct lcs_header);
 *(__u16 *)(buffer->data + count) = 0;
 buffer->count = count + sizeof(__u16);
 buffer->callback = lcs_release_buffer;
 cmd = (struct lcs_cmd *) buffer->data;
 cmd->offset = count;
 cmd->type = LCS_FRAME_TYPE_CONTROL;
 cmd->slot = 0;
 return buffer;
}
