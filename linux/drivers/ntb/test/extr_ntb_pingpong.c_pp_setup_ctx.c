
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_ctx {int ntb; } ;


 int NTB_SPEED_AUTO ;
 int NTB_WIDTH_AUTO ;
 int ntb_link_enable (int ,int ,int ) ;
 int ntb_link_event (int ) ;
 int ntb_set_ctx (int ,struct pp_ctx*,int *) ;
 int pp_ops ;

__attribute__((used)) static int pp_setup_ctx(struct pp_ctx *pp)
{
 int ret;

 ret = ntb_set_ctx(pp->ntb, pp, &pp_ops);
 if (ret)
  return ret;

 ntb_link_enable(pp->ntb, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);

 ntb_link_event(pp->ntb);

 return 0;
}
