
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct dc_pinmap {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {unsigned int number; } ;


 struct dc_pinmap* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int dc_get_group_pins(struct pinctrl_dev *pctldev, unsigned selector,
        const unsigned **pins,
        unsigned *num_pins)
{
 struct dc_pinmap *pmap = pinctrl_dev_get_drvdata(pctldev);

 *pins = &pmap->desc->pins[selector].number;
 *num_pins = 1;

 return 0;
}
