
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct dc_pinmap {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {char const* name; } ;


 struct dc_pinmap* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *dc_get_group_name(struct pinctrl_dev *pctldev,
         unsigned selector)
{
 struct dc_pinmap *pmap = pinctrl_dev_get_drvdata(pctldev);


 return pmap->desc->pins[selector].name;
}
