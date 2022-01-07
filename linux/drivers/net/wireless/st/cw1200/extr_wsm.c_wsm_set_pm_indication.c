
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_buf {int dummy; } ;
struct cw1200_common {int ps_mode_switch_done; scalar_t__ ps_mode_switch_in_progress; } ;


 int wake_up (int *) ;

__attribute__((used)) static int wsm_set_pm_indication(struct cw1200_common *priv,
     struct wsm_buf *buf)
{

 if (priv->ps_mode_switch_in_progress) {
  priv->ps_mode_switch_in_progress = 0;
  wake_up(&priv->ps_mode_switch_done);
 }
 return 0;
}
