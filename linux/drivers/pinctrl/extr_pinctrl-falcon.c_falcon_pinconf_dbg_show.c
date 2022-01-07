
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct pin_desc {int gpio_owner; } ;
struct ltq_pinmux_info {int * membase; } ;


 int LTQ_PADC_MUX (int ) ;
 unsigned long LTQ_PINCONF_PACK (int ,int ) ;
 int LTQ_PINCONF_PARAM_DRIVE_CURRENT ;
 int LTQ_PINCONF_PARAM_PULL ;
 int LTQ_PINCONF_PARAM_SLEW_RATE ;
 scalar_t__ LTQ_PINCONF_UNPACK_ARG (unsigned long) ;
 int PORT (unsigned int) ;
 int PORT_PIN (unsigned int) ;
 int falcon_pinconf_get (struct pinctrl_dev*,unsigned int,unsigned long*) ;
 int pad_r32 (int ,int ) ;
 struct pin_desc* pin_desc_get (struct pinctrl_dev*,unsigned int) ;
 struct ltq_pinmux_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void falcon_pinconf_dbg_show(struct pinctrl_dev *pctrldev,
   struct seq_file *s, unsigned offset)
{
 unsigned long config;
 struct pin_desc *desc;

 struct ltq_pinmux_info *info = pinctrl_dev_get_drvdata(pctrldev);
 int port = PORT(offset);

 seq_printf(s, " (port %d) mux %d -- ", port,
  pad_r32(info->membase[port], LTQ_PADC_MUX(PORT_PIN(offset))));

 config = LTQ_PINCONF_PACK(LTQ_PINCONF_PARAM_PULL, 0);
 if (!falcon_pinconf_get(pctrldev, offset, &config))
  seq_printf(s, "pull %d ",
   (int)LTQ_PINCONF_UNPACK_ARG(config));

 config = LTQ_PINCONF_PACK(LTQ_PINCONF_PARAM_DRIVE_CURRENT, 0);
 if (!falcon_pinconf_get(pctrldev, offset, &config))
  seq_printf(s, "drive-current %d ",
   (int)LTQ_PINCONF_UNPACK_ARG(config));

 config = LTQ_PINCONF_PACK(LTQ_PINCONF_PARAM_SLEW_RATE, 0);
 if (!falcon_pinconf_get(pctrldev, offset, &config))
  seq_printf(s, "slew-rate %d ",
   (int)LTQ_PINCONF_UNPACK_ARG(config));

 desc = pin_desc_get(pctrldev, offset);
 if (desc) {
  if (desc->gpio_owner)
   seq_printf(s, " owner: %s", desc->gpio_owner);
 } else {
  seq_printf(s, " not registered");
 }
}
