
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tool_ctx {int dummy; } ;
struct ntb_dev {struct tool_ctx* ctx; } ;
struct ntb_client {int dummy; } ;


 int tool_clear_data (struct tool_ctx*) ;
 int tool_clear_dbgfs (struct tool_ctx*) ;
 int tool_clear_mws (struct tool_ctx*) ;
 int tool_clear_ntb (struct tool_ctx*) ;

__attribute__((used)) static void tool_remove(struct ntb_client *self, struct ntb_dev *ntb)
{
 struct tool_ctx *tc = ntb->ctx;

 tool_clear_dbgfs(tc);

 tool_clear_ntb(tc);

 tool_clear_mws(tc);

 tool_clear_data(tc);
}
