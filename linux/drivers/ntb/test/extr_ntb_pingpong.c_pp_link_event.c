
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_ctx {int dummy; } ;


 int pp_setup (struct pp_ctx*) ;

__attribute__((used)) static void pp_link_event(void *ctx)
{
 struct pp_ctx *pp = ctx;

 pp_setup(pp);
}
