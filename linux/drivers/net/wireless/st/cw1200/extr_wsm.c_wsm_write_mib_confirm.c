
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_mib {scalar_t__ mib_id; char* buf; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {int dummy; } ;


 scalar_t__ WSM_MIB_ID_OPERATIONAL_POWER_MODE ;
 int cw1200_enable_powersave (struct cw1200_common*,int) ;
 int wsm_generic_confirm (struct cw1200_common*,struct wsm_mib*,struct wsm_buf*) ;

__attribute__((used)) static int wsm_write_mib_confirm(struct cw1200_common *priv,
    struct wsm_mib *arg,
    struct wsm_buf *buf)
{
 int ret;

 ret = wsm_generic_confirm(priv, arg, buf);
 if (ret)
  return ret;

 if (arg->mib_id == WSM_MIB_ID_OPERATIONAL_POWER_MODE) {

  const char *p = arg->buf;
  cw1200_enable_powersave(priv, (p[0] & 0x0F) ? 1 : 0);
 }
 return 0;
}
