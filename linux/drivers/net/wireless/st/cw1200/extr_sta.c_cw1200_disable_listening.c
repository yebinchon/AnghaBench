
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_reset {int reset_statistics; } ;
struct cw1200_common {int dummy; } ;


 int wsm_reset (struct cw1200_common*,struct wsm_reset*) ;

int cw1200_disable_listening(struct cw1200_common *priv)
{
 int ret;
 struct wsm_reset reset = {
  .reset_statistics = 1,
 };
 ret = wsm_reset(priv, &reset);
 return ret;
}
