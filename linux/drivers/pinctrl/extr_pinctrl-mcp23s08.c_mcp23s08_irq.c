
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int domain; } ;
struct TYPE_4__ {int ngpio; TYPE_1__ irq; int parent; } ;
struct mcp23s08 {int cached_gpio; int irq_rise; int irq_fall; int lock; TYPE_2__ chip; } ;
typedef int irqreturn_t ;


 int BIT (int) ;
 int IRQ_HANDLED ;
 int MCP_DEFVAL ;
 int MCP_GPIO ;
 int MCP_INTCAP ;
 int MCP_INTCON ;
 int MCP_INTF ;
 int dev_dbg (int ,char*,int,int,int,int) ;
 int handle_nested_irq (unsigned int) ;
 unsigned int irq_find_mapping (int ,int) ;
 scalar_t__ mcp_read (struct mcp23s08*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t mcp23s08_irq(int irq, void *data)
{
 struct mcp23s08 *mcp = data;
 int intcap, intcon, intf, i, gpio, gpio_orig, intcap_mask, defval;
 unsigned int child_irq;
 bool intf_set, intcap_changed, gpio_bit_changed,
  defval_changed, gpio_set;

 mutex_lock(&mcp->lock);
 if (mcp_read(mcp, MCP_INTF, &intf))
  goto unlock;

 if (mcp_read(mcp, MCP_INTCAP, &intcap))
  goto unlock;

 if (mcp_read(mcp, MCP_INTCON, &intcon))
  goto unlock;

 if (mcp_read(mcp, MCP_DEFVAL, &defval))
  goto unlock;


 if (mcp_read(mcp, MCP_GPIO, &gpio))
  goto unlock;

 gpio_orig = mcp->cached_gpio;
 mcp->cached_gpio = gpio;
 mutex_unlock(&mcp->lock);

 if (intf == 0) {

  return IRQ_HANDLED;
 }

 dev_dbg(mcp->chip.parent,
  "intcap 0x%04X intf 0x%04X gpio_orig 0x%04X gpio 0x%04X\n",
  intcap, intf, gpio_orig, gpio);

 for (i = 0; i < mcp->chip.ngpio; i++) {
  intf_set = intf & BIT(i);
  if (i < 8 && intf_set)
   intcap_mask = 0x00FF;
  else if (i >= 8 && intf_set)
   intcap_mask = 0xFF00;
  else
   intcap_mask = 0x00;

  intcap_changed = (intcap_mask &
   (intcap & BIT(i))) !=
   (intcap_mask & (BIT(i) & gpio_orig));
  gpio_set = BIT(i) & gpio;
  gpio_bit_changed = (BIT(i) & gpio_orig) !=
   (BIT(i) & gpio);
  defval_changed = (BIT(i) & intcon) &&
   ((BIT(i) & gpio) !=
   (BIT(i) & defval));

  if (((gpio_bit_changed || intcap_changed) &&
   (BIT(i) & mcp->irq_rise) && gpio_set) ||
      ((gpio_bit_changed || intcap_changed) &&
   (BIT(i) & mcp->irq_fall) && !gpio_set) ||
      defval_changed) {
   child_irq = irq_find_mapping(mcp->chip.irq.domain, i);
   handle_nested_irq(child_irq);
  }
 }

 return IRQ_HANDLED;

unlock:
 mutex_unlock(&mcp->lock);
 return IRQ_HANDLED;
}
