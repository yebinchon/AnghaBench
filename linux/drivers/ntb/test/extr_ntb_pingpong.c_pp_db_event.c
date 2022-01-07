
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_ctx {int dummy; } ;


 int pp_pong (struct pp_ctx*) ;

__attribute__((used)) static void pp_db_event(void *ctx, int vec)
{
 struct pp_ctx *pp = ctx;

 pp_pong(pp);
}
