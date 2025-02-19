
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wsm_set_pm {int mode; } ;
struct TYPE_2__ {scalar_t__ uapsd_flags; } ;
struct cw1200_common {struct wsm_set_pm firmware_ps_mode; TYPE_1__ uapsd_info; } ;


 int WSM_PSM_FAST_PS_FLAG ;
 scalar_t__ memcmp (struct wsm_set_pm*,struct wsm_set_pm*,int) ;
 int wsm_set_pm (struct cw1200_common*,struct wsm_set_pm*) ;

int cw1200_set_pm(struct cw1200_common *priv, const struct wsm_set_pm *arg)
{
 struct wsm_set_pm pm = *arg;

 if (priv->uapsd_info.uapsd_flags != 0)
  pm.mode &= ~WSM_PSM_FAST_PS_FLAG;

 if (memcmp(&pm, &priv->firmware_ps_mode,
     sizeof(struct wsm_set_pm))) {
  priv->firmware_ps_mode = pm;
  return wsm_set_pm(priv, &pm);
 } else {
  return 0;
 }
}
