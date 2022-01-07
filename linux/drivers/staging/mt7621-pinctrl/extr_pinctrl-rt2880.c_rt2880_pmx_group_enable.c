
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rt2880_priv {int* gpio; TYPE_3__** func; TYPE_2__* groups; int dev; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_6__ {int enabled; int pin_count; size_t* pins; int value; } ;
struct TYPE_5__ {int enabled; int shift; int mask; int gpio; TYPE_1__* func; int name; } ;
struct TYPE_4__ {int pin_count; size_t* pins; } ;


 int EBUSY ;
 int SYSC_REG_GPIO_MODE ;
 int SYSC_REG_GPIO_MODE2 ;
 int dev_err (int ,char*,int ) ;
 struct rt2880_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int rt_sysc_r32 (int) ;
 int rt_sysc_w32 (int,int) ;

__attribute__((used)) static int rt2880_pmx_group_enable(struct pinctrl_dev *pctrldev,
       unsigned int func, unsigned int group)
{
 struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);
 u32 mode = 0;
 u32 reg = SYSC_REG_GPIO_MODE;
 int i;
 int shift;


 if (p->groups[group].enabled) {
  dev_err(p->dev, "%s is already enabled\n",
   p->groups[group].name);
  return -EBUSY;
 }

 p->groups[group].enabled = 1;
 p->func[func]->enabled = 1;

 shift = p->groups[group].shift;
 if (shift >= 32) {
  shift -= 32;
  reg = SYSC_REG_GPIO_MODE2;
 }
 mode = rt_sysc_r32(reg);
 mode &= ~(p->groups[group].mask << shift);


 for (i = 0; i < p->groups[group].func[0].pin_count; i++)
  p->gpio[p->groups[group].func[0].pins[i]] = 1;


 if (func == 0) {
  mode |= p->groups[group].gpio << shift;
 } else {
  for (i = 0; i < p->func[func]->pin_count; i++)
   p->gpio[p->func[func]->pins[i]] = 0;
  mode |= p->func[func]->value << shift;
 }
 rt_sysc_w32(mode, reg);

 return 0;
}
