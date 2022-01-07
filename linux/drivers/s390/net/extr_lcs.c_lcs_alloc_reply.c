
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_reply {int wait_q; scalar_t__ rc; scalar_t__ received; int sequence_no; int refcnt; } ;
struct lcs_cmd {int sequence_no; } ;


 int GFP_ATOMIC ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int init_waitqueue_head (int *) ;
 struct lcs_reply* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;
 int trace ;

__attribute__((used)) static struct lcs_reply *
lcs_alloc_reply(struct lcs_cmd *cmd)
{
 struct lcs_reply *reply;

 LCS_DBF_TEXT(4, trace, "getreply");

 reply = kzalloc(sizeof(struct lcs_reply), GFP_ATOMIC);
 if (!reply)
  return ((void*)0);
 refcount_set(&reply->refcnt, 1);
 reply->sequence_no = cmd->sequence_no;
 reply->received = 0;
 reply->rc = 0;
 init_waitqueue_head(&reply->wait_q);

 return reply;
}
