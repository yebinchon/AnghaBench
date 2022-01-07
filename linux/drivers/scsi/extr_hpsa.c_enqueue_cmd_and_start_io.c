
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int dummy; } ;
struct CommandList {int dummy; } ;


 int DEFAULT_REPLY_QUEUE ;
 int __enqueue_cmd_and_start_io (struct ctlr_info*,struct CommandList*,int ) ;

__attribute__((used)) static void enqueue_cmd_and_start_io(struct ctlr_info *h, struct CommandList *c)
{
 __enqueue_cmd_and_start_io(h, c, DEFAULT_REPLY_QUEUE);
}
