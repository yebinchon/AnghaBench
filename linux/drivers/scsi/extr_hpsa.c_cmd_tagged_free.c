
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int dummy; } ;
struct CommandList {int refcount; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static void cmd_tagged_free(struct ctlr_info *h, struct CommandList *c)
{




 (void)atomic_dec(&c->refcount);
}
