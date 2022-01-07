
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {int powersave_enabled; } ;


 int pr_debug (char*,char*) ;

void cw1200_enable_powersave(struct cw1200_common *priv,
        bool enable)
{
 pr_debug("[BH] Powerave is %s.\n",
   enable ? "enabled" : "disabled");
 priv->powersave_enabled = enable;
}
