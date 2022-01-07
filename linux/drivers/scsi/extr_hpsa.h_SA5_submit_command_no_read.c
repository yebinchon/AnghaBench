
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {scalar_t__ vaddr; } ;
struct CommandList {int busaddr; } ;


 scalar_t__ SA5_REQUEST_PORT_OFFSET ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void SA5_submit_command_no_read(struct ctlr_info *h,
 struct CommandList *c)
{
 writel(c->busaddr, h->vaddr + SA5_REQUEST_PORT_OFFSET);
}
