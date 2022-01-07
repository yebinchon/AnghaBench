
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct asm9260_wdt_priv {TYPE_1__* dev; void* mode; } ;
struct TYPE_2__ {int of_node; } ;


 void* DEBUG ;
 void* HW_RESET ;
 void* SW_RESET ;
 int dev_warn (TYPE_1__*,char*,char const*) ;
 int of_property_read_string (int ,char*,char const**) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void asm9260_wdt_get_dt_mode(struct asm9260_wdt_priv *priv)
{
 const char *tmp;
 int ret;


 priv->mode = HW_RESET;

 ret = of_property_read_string(priv->dev->of_node,
          "alphascale,mode", &tmp);
 if (ret < 0)
  return;

 if (!strcmp(tmp, "hw"))
  priv->mode = HW_RESET;
 else if (!strcmp(tmp, "sw"))
  priv->mode = SW_RESET;
 else if (!strcmp(tmp, "debug"))
  priv->mode = DEBUG;
 else
  dev_warn(priv->dev, "unknown reset-type: %s. Using default \"hw\" mode.",
    tmp);
}
