
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct imx_pinctrl_soc_info {TYPE_2__* pins; } ;
struct imx_pinctrl {int dev; struct imx_pinctrl_soc_info* info; } ;
struct imx_pin_scu {void* config; void* mux_mode; } ;
struct TYPE_3__ {struct imx_pin_scu scu; } ;
struct imx_pin {unsigned int pin; TYPE_1__ conf; } ;
typedef int __be32 ;
struct TYPE_4__ {int name; } ;


 void* be32_to_cpu (int ) ;
 int dev_dbg (int ,char*,int ,void*,void*) ;

void imx_pinctrl_parse_pin_scu(struct imx_pinctrl *ipctl,
          unsigned int *pin_id, struct imx_pin *pin,
          const __be32 **list_p)
{
 const struct imx_pinctrl_soc_info *info = ipctl->info;
 struct imx_pin_scu *pin_scu = &pin->conf.scu;
 const __be32 *list = *list_p;

 pin->pin = be32_to_cpu(*list++);
 *pin_id = pin->pin;
 pin_scu->mux_mode = be32_to_cpu(*list++);
 pin_scu->config = be32_to_cpu(*list++);
 *list_p = list;

 dev_dbg(ipctl->dev, "%s: 0x%x 0x%08lx", info->pins[pin->pin].name,
  pin_scu->mux_mode, pin_scu->config);
}
