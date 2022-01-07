
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_ctx {int ntb; } ;


 int ntb_clear_ctx (int ) ;
 int ntb_link_disable (int ) ;

__attribute__((used)) static void pp_clear_ctx(struct pp_ctx *pp)
{
 ntb_link_disable(pp->ntb);

 ntb_clear_ctx(pp->ntb);
}
