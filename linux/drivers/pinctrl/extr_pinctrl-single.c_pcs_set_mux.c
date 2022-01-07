
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct pcs_function {int nvals; struct pcs_func_vals* vals; int name; } ;
struct pcs_func_vals {unsigned int mask; unsigned int val; int reg; } ;
struct pcs_device {unsigned int fmask; unsigned int (* read ) (int ) ;int lock; int (* write ) (unsigned int,int ) ;scalar_t__ bits_per_mux; int dev; } ;
struct function_desc {struct pcs_function* data; } ;


 int EINVAL ;
 int dev_dbg (int ,char*,int ,unsigned int) ;
 struct pcs_device* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 struct function_desc* pinmux_generic_get_function (struct pinctrl_dev*,unsigned int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int stub1 (int ) ;
 int stub2 (unsigned int,int ) ;

__attribute__((used)) static int pcs_set_mux(struct pinctrl_dev *pctldev, unsigned fselector,
 unsigned group)
{
 struct pcs_device *pcs;
 struct function_desc *function;
 struct pcs_function *func;
 int i;

 pcs = pinctrl_dev_get_drvdata(pctldev);

 if (!pcs->fmask)
  return 0;
 function = pinmux_generic_get_function(pctldev, fselector);
 func = function->data;
 if (!func)
  return -EINVAL;

 dev_dbg(pcs->dev, "enabling %s function%i\n",
  func->name, fselector);

 for (i = 0; i < func->nvals; i++) {
  struct pcs_func_vals *vals;
  unsigned long flags;
  unsigned val, mask;

  vals = &func->vals[i];
  raw_spin_lock_irqsave(&pcs->lock, flags);
  val = pcs->read(vals->reg);

  if (pcs->bits_per_mux)
   mask = vals->mask;
  else
   mask = pcs->fmask;

  val &= ~mask;
  val |= (vals->val & mask);
  pcs->write(val, vals->reg);
  raw_spin_unlock_irqrestore(&pcs->lock, flags);
 }

 return 0;
}
