
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct rt2880_priv {int func_count; int max_pins; int* gpio; TYPE_3__* desc; TYPE_2__* pads; int dev; TYPE_1__** func; } ;
struct pinctrl_pin_desc {int dummy; } ;
struct TYPE_6__ {int npins; TYPE_2__* pins; } ;
struct TYPE_5__ {int number; char* name; } ;
struct TYPE_4__ {int pin_count; int* pins; int pin_first; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 void* devm_kcalloc (int ,int,int,int ) ;
 char* devm_kzalloc (int ,int,int ) ;
 int memset (int*,int,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int rt2880_pinmux_pins(struct rt2880_priv *p)
{
 int i, j;





 for (i = 0; i < p->func_count; i++) {
  int pin;

  if (!p->func[i]->pin_count)
   continue;

  p->func[i]->pins = devm_kcalloc(p->dev,
      p->func[i]->pin_count,
      sizeof(int),
      GFP_KERNEL);
  for (j = 0; j < p->func[i]->pin_count; j++)
   p->func[i]->pins[j] = p->func[i]->pin_first + j;

  pin = p->func[i]->pin_first + p->func[i]->pin_count;
  if (pin > p->max_pins)
   p->max_pins = pin;
 }


 p->gpio = devm_kcalloc(p->dev, p->max_pins, sizeof(u8), GFP_KERNEL);

 p->pads = devm_kcalloc(p->dev, p->max_pins,
          sizeof(struct pinctrl_pin_desc), GFP_KERNEL);
 if (!p->pads || !p->gpio) {
  dev_err(p->dev, "Failed to allocate gpio data\n");
  return -ENOMEM;
 }

 memset(p->gpio, 1, sizeof(u8) * p->max_pins);
 for (i = 0; i < p->func_count; i++) {
  if (!p->func[i]->pin_count)
   continue;

  for (j = 0; j < p->func[i]->pin_count; j++)
   p->gpio[p->func[i]->pins[j]] = 0;
 }


 p->gpio[0] = 1;


 for (i = 0; i < p->max_pins; i++) {

  char *name = devm_kzalloc(p->dev, 5, GFP_KERNEL);

  if (!name)
   return -ENOMEM;
  snprintf(name, 5, "io%d", i);
  p->pads[i].number = i;
  p->pads[i].name = name;
 }
 p->desc->pins = p->pads;
 p->desc->npins = p->max_pins;

 return 0;
}
