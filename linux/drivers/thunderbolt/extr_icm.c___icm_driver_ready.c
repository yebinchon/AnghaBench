
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_cfg_result {int err; } ;
struct tb {int ctl; } ;
struct icm {int (* driver_ready ) (struct tb*,int*,size_t*,int*) ;} ;
typedef enum tb_security_level { ____Placeholder_tb_security_level } tb_security_level ;


 int ETIMEDOUT ;
 int TB_CFG_SWITCH ;
 int msleep (int) ;
 int stub1 (struct tb*,int*,size_t*,int*) ;
 struct tb_cfg_result tb_cfg_read_raw (int ,int *,int ,int ,int ,int ,int,int) ;
 int tb_err (struct tb*,char*) ;
 struct icm* tb_priv (struct tb*) ;

__attribute__((used)) static int
__icm_driver_ready(struct tb *tb, enum tb_security_level *security_level,
     size_t *nboot_acl, bool *rpm)
{
 struct icm *icm = tb_priv(tb);
 unsigned int retries = 50;
 int ret;

 ret = icm->driver_ready(tb, security_level, nboot_acl, rpm);
 if (ret) {
  tb_err(tb, "failed to send driver ready to ICM\n");
  return ret;
 }





 do {
  struct tb_cfg_result res;
  u32 tmp;

  res = tb_cfg_read_raw(tb->ctl, &tmp, 0, 0, TB_CFG_SWITCH,
          0, 1, 100);
  if (!res.err)
   return 0;

  msleep(50);
 } while (--retries);

 tb_err(tb, "failed to read root switch config space, giving up\n");
 return -ETIMEDOUT;
}
