
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int dummy; } ;
struct CommandList {int dummy; } ;


 int cmd_tagged_free (struct ctlr_info*,struct CommandList*) ;
 int hpsa_cmd_resolve_events (struct ctlr_info*,struct CommandList*) ;

__attribute__((used)) static void hpsa_cmd_resolve_and_free(struct ctlr_info *h,
          struct CommandList *c)
{
 hpsa_cmd_resolve_events(h, c);
 cmd_tagged_free(h, c);
}
