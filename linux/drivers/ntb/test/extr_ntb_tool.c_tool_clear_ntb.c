
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tool_ctx {int ntb; } ;


 int ntb_clear_ctx (int ) ;
 int ntb_link_disable (int ) ;

__attribute__((used)) static void tool_clear_ntb(struct tool_ctx *tc)
{
 ntb_clear_ctx(tc->ntb);
 ntb_link_disable(tc->ntb);
}
