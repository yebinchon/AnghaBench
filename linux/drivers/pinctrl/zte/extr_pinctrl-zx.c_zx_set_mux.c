
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct zx_pinctrl_soc_info {struct pinctrl_pin_desc* pins; } ;
struct zx_pinctrl {int aux_base; int base; int lock; struct zx_pinctrl_soc_info* info; } ;
struct zx_pin_data {int width; int offset; int bitpos; scalar_t__ aon_pin; struct zx_mux_desc* muxes; } ;
struct zx_mux_desc {int muxval; scalar_t__ name; } ;
struct pinctrl_pin_desc {int number; struct zx_pin_data* drv_data; } ;
struct pinctrl_dev {int dummy; } ;
struct function_desc {int name; } ;


 int AON_MUX_FLAG ;
 int EINVAL ;
 int NONAON_MVAL ;
 struct zx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 struct function_desc* pinmux_generic_get_function (struct pinctrl_dev*,unsigned int) ;
 int readl (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ strcmp (scalar_t__,int ) ;
 int writel (int,int) ;

__attribute__((used)) static int zx_set_mux(struct pinctrl_dev *pctldev, unsigned int func_selector,
        unsigned int group_selector)
{
 struct zx_pinctrl *zpctl = pinctrl_dev_get_drvdata(pctldev);
 struct zx_pinctrl_soc_info *info = zpctl->info;
 const struct pinctrl_pin_desc *pindesc = info->pins + group_selector;
 struct zx_pin_data *data = pindesc->drv_data;
 struct zx_mux_desc *mux;
 u32 mask, offset, bitpos;
 struct function_desc *func;
 unsigned long flags;
 u32 val, mval;


 if (!data)
  return -EINVAL;

 mux = data->muxes;
 mask = (1 << data->width) - 1;
 offset = data->offset;
 bitpos = data->bitpos;

 func = pinmux_generic_get_function(pctldev, func_selector);
 if (!func)
  return -EINVAL;

 while (mux->name) {
  if (strcmp(mux->name, func->name) == 0)
   break;
  mux++;
 }


 mval = mux->muxval;

 spin_lock_irqsave(&zpctl->lock, flags);

 if (data->aon_pin) {





  u16 aoffset = pindesc->number / 16 * 4;
  u16 abitpos = (pindesc->number % 16) * 2;

  if (mval & AON_MUX_FLAG) {




   val = readl(zpctl->aux_base + aoffset);
   val &= ~(0x3 << abitpos);
   val |= (mval & 0x3) << abitpos;
   writel(val, zpctl->aux_base + aoffset);
  } else {




   val = readl(zpctl->base + offset);
   val &= ~(mask << bitpos);
   val |= (mval & mask) << bitpos;
   writel(val, zpctl->base + offset);





   val = readl(zpctl->aux_base + aoffset);
   val &= ~(0x3 << abitpos);
   val |= NONAON_MVAL << abitpos;
   writel(val, zpctl->aux_base + aoffset);
  }

 } else {




  val = readl(zpctl->base + offset);
  val &= ~(mask << bitpos);
  val |= (mval & mask) << bitpos;
  writel(val, zpctl->base + offset);
 }

 spin_unlock_irqrestore(&zpctl->lock, flags);

 return 0;
}
