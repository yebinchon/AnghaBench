
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_ctx {int dummy; } ;
struct ntb_dev {int dummy; } ;
struct ntb_client {int dummy; } ;


 scalar_t__ IS_ERR (struct pp_ctx*) ;
 int PTR_ERR (struct pp_ctx*) ;
 int pp_check_ntb (struct ntb_dev*) ;
 struct pp_ctx* pp_create_data (struct ntb_dev*) ;
 int pp_init_flds (struct pp_ctx*) ;
 int pp_mask_events (struct pp_ctx*) ;
 int pp_setup_ctx (struct pp_ctx*) ;
 int pp_setup_dbgfs (struct pp_ctx*) ;

__attribute__((used)) static int pp_probe(struct ntb_client *client, struct ntb_dev *ntb)
{
 struct pp_ctx *pp;
 int ret;

 ret = pp_check_ntb(ntb);
 if (ret)
  return ret;

 pp = pp_create_data(ntb);
 if (IS_ERR(pp))
  return PTR_ERR(pp);

 pp_init_flds(pp);

 ret = pp_mask_events(pp);
 if (ret)
  return ret;

 ret = pp_setup_ctx(pp);
 if (ret)
  return ret;

 pp_setup_dbgfs(pp);

 return 0;
}
