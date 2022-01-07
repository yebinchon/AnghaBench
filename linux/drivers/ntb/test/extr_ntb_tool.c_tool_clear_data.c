
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tool_ctx {int msg_wq; int db_wq; int link_wq; } ;


 int wake_up (int *) ;

__attribute__((used)) static void tool_clear_data(struct tool_ctx *tc)
{
 wake_up(&tc->link_wq);
 wake_up(&tc->db_wq);
 wake_up(&tc->msg_wq);
}
