
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int name; } ;
struct pinctrl_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 char* kasprintf (int ,char*,int ,unsigned int) ;
 int kfree (char const*) ;
 int pin_request (struct pinctrl_dev*,unsigned int,char const*,struct pinctrl_gpio_range*) ;

int pinmux_request_gpio(struct pinctrl_dev *pctldev,
   struct pinctrl_gpio_range *range,
   unsigned pin, unsigned gpio)
{
 const char *owner;
 int ret;


 owner = kasprintf(GFP_KERNEL, "%s:%d", range->name, gpio);
 if (!owner)
  return -ENOMEM;

 ret = pin_request(pctldev, pin, owner, range);
 if (ret < 0)
  kfree(owner);

 return ret;
}
