
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_thermal_priv {int dummy; } ;


 int rcar_thermal_get_current_temp (struct rcar_thermal_priv*,int*) ;

__attribute__((used)) static int rcar_thermal_of_get_temp(void *data, int *temp)
{
 struct rcar_thermal_priv *priv = data;

 return rcar_thermal_get_current_temp(priv, temp);
}
