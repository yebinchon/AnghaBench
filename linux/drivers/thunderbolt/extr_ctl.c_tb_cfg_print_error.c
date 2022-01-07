
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_ctl {int dummy; } ;
struct tb_cfg_result {int err; int tb_error; int response_port; int response_route; } ;






 int WARN_ON (int) ;
 int tb_ctl_WARN (struct tb_ctl*,char*,int ,int ) ;

__attribute__((used)) static void tb_cfg_print_error(struct tb_ctl *ctl,
          const struct tb_cfg_result *res)
{
 WARN_ON(res->err != 1);
 switch (res->tb_error) {
 case 128:


  return;
 case 131:




  tb_ctl_WARN(ctl,
   "CFG_ERROR(%llx:%x): Invalid config space or offset\n",
   res->response_route, res->response_port);
  return;
 case 129:





  tb_ctl_WARN(ctl, "CFG_ERROR(%llx:%x): Invalid port\n",
   res->response_route, res->response_port);
  return;
 case 130:
  tb_ctl_WARN(ctl, "CFG_ERROR(%llx:%x): Route contains a loop\n",
   res->response_route, res->response_port);
  return;
 default:

  tb_ctl_WARN(ctl, "CFG_ERROR(%llx:%x): Unknown error\n",
   res->response_route, res->response_port);
  return;
 }
}
