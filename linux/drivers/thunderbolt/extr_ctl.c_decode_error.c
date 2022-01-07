
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_cfg_result {int err; scalar_t__ response_port; int tb_error; int response_route; int member_0; } ;
struct ctl_pkg {struct cfg_error_pkg* buffer; } ;
struct cfg_error_pkg {scalar_t__ port; int error; int zero1; int zero3; int zero2; int header; } ;


 int TB_CFG_PKG_ERROR ;
 int WARN (int ,char*,int ) ;
 int check_header (struct ctl_pkg const*,int,int ,int ) ;
 int tb_cfg_get_route (int *) ;

__attribute__((used)) static struct tb_cfg_result decode_error(const struct ctl_pkg *response)
{
 struct cfg_error_pkg *pkg = response->buffer;
 struct tb_cfg_result res = { 0 };
 res.response_route = tb_cfg_get_route(&pkg->header);
 res.response_port = 0;
 res.err = check_header(response, sizeof(*pkg), TB_CFG_PKG_ERROR,
          tb_cfg_get_route(&pkg->header));
 if (res.err)
  return res;

 WARN(pkg->zero1, "pkg->zero1 is %#x\n", pkg->zero1);
 WARN(pkg->zero2, "pkg->zero1 is %#x\n", pkg->zero1);
 WARN(pkg->zero3, "pkg->zero1 is %#x\n", pkg->zero1);
 res.err = 1;
 res.tb_error = pkg->error;
 res.response_port = pkg->port;
 return res;

}
