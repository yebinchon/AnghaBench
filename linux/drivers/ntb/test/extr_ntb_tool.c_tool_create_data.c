
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tool_ctx {int msg_wq; int db_wq; int link_wq; struct ntb_dev* ntb; } ;
struct ntb_dev {int dev; } ;


 int ENOMEM ;
 struct tool_ctx* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dev_dbg (int *,char*) ;
 struct tool_ctx* devm_kzalloc (int *,int,int ) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ ntb_db_is_unsafe (struct ntb_dev*) ;
 scalar_t__ ntb_spad_is_unsafe (struct ntb_dev*) ;

__attribute__((used)) static struct tool_ctx *tool_create_data(struct ntb_dev *ntb)
{
 struct tool_ctx *tc;

 tc = devm_kzalloc(&ntb->dev, sizeof(*tc), GFP_KERNEL);
 if (tc == ((void*)0))
  return ERR_PTR(-ENOMEM);

 tc->ntb = ntb;
 init_waitqueue_head(&tc->link_wq);
 init_waitqueue_head(&tc->db_wq);
 init_waitqueue_head(&tc->msg_wq);

 if (ntb_db_is_unsafe(ntb))
  dev_dbg(&ntb->dev, "doorbell is unsafe\n");

 if (ntb_spad_is_unsafe(ntb))
  dev_dbg(&ntb->dev, "scratchpad is unsafe\n");

 return tc;
}
