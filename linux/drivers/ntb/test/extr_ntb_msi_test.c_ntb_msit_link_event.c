
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_msit_ctx {int setup_work; int ntb; } ;


 int ntb_link_is_up (int ,int *,int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void ntb_msit_link_event(void *ctx)
{
 struct ntb_msit_ctx *nm = ctx;

 if (!ntb_link_is_up(nm->ntb, ((void*)0), ((void*)0)))
  return;

 schedule_work(&nm->setup_work);
}
