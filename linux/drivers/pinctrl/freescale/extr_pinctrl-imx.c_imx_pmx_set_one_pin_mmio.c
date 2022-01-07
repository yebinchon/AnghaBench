
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct imx_pinctrl_soc_info {int flags; int mux_mask; int mux_shift; TYPE_2__* pins; } ;
struct imx_pinctrl {int base; int input_sel_base; int dev; struct imx_pin_reg* pin_regs; struct imx_pinctrl_soc_info* info; } ;
struct imx_pin_reg {int mux_reg; } ;
struct imx_pin_mmio {int mux_mode; int input_val; int input_reg; } ;
struct TYPE_3__ {struct imx_pin_mmio mmio; } ;
struct imx_pin {unsigned int pin; TYPE_1__ conf; } ;
struct TYPE_4__ {int name; } ;


 int SHARE_MUX_CONF_REG ;
 int dev_dbg (int ,char*,int,...) ;
 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static int imx_pmx_set_one_pin_mmio(struct imx_pinctrl *ipctl,
        struct imx_pin *pin)
{
 const struct imx_pinctrl_soc_info *info = ipctl->info;
 struct imx_pin_mmio *pin_mmio = &pin->conf.mmio;
 const struct imx_pin_reg *pin_reg;
 unsigned int pin_id;

 pin_id = pin->pin;
 pin_reg = &ipctl->pin_regs[pin_id];

 if (pin_reg->mux_reg == -1) {
  dev_dbg(ipctl->dev, "Pin(%s) does not support mux function\n",
   info->pins[pin_id].name);
  return 0;
 }

 if (info->flags & SHARE_MUX_CONF_REG) {
  u32 reg;

  reg = readl(ipctl->base + pin_reg->mux_reg);
  reg &= ~info->mux_mask;
  reg |= (pin_mmio->mux_mode << info->mux_shift);
  writel(reg, ipctl->base + pin_reg->mux_reg);
  dev_dbg(ipctl->dev, "write: offset 0x%x val 0x%x\n",
   pin_reg->mux_reg, reg);
 } else {
  writel(pin_mmio->mux_mode, ipctl->base + pin_reg->mux_reg);
  dev_dbg(ipctl->dev, "write: offset 0x%x val 0x%x\n",
   pin_reg->mux_reg, pin_mmio->mux_mode);
 }
 if (pin_mmio->input_val >> 24 == 0xff) {
  u32 val = pin_mmio->input_val;
  u8 select = val & 0xff;
  u8 width = (val >> 8) & 0xff;
  u8 shift = (val >> 16) & 0xff;
  u32 mask = ((1 << width) - 1) << shift;




  val = readl(ipctl->base + pin_mmio->input_reg);
  val &= ~mask;
  val |= select << shift;
  writel(val, ipctl->base + pin_mmio->input_reg);
 } else if (pin_mmio->input_reg) {




  if (ipctl->input_sel_base)
   writel(pin_mmio->input_val, ipctl->input_sel_base +
     pin_mmio->input_reg);
  else
   writel(pin_mmio->input_val, ipctl->base +
     pin_mmio->input_reg);
  dev_dbg(ipctl->dev,
   "==>select_input: offset 0x%x val 0x%x\n",
   pin_mmio->input_reg, pin_mmio->input_val);
 }

 return 0;
}
