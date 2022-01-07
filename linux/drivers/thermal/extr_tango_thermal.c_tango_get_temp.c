
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tango_thermal_priv {int thresh_idx; int base; } ;


 int IDX_MAX ;
 int IDX_MIN ;
 int cpu_relax () ;
 scalar_t__ temp_above_thresh (int ,int) ;

__attribute__((used)) static int tango_get_temp(void *arg, int *res)
{
 struct tango_thermal_priv *priv = arg;
 int idx = priv->thresh_idx;

 if (temp_above_thresh(priv->base, idx)) {

  while (idx < IDX_MAX && temp_above_thresh(priv->base, ++idx))
   cpu_relax();
  idx = idx - 1;
 } else {

  while (idx > IDX_MIN && !temp_above_thresh(priv->base, --idx))
   cpu_relax();
 }

 *res = (idx * 9 / 2 - 38) * 1000;
 priv->thresh_idx = idx;

 return 0;
}
