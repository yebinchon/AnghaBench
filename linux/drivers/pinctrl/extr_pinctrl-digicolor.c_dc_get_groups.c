
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct dc_pinmap {char** pin_names; } ;


 unsigned int PINS_COUNT ;
 struct dc_pinmap* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int dc_get_groups(struct pinctrl_dev *pctldev, unsigned selector,
    const char * const **groups,
    unsigned * const num_groups)
{
 struct dc_pinmap *pmap = pinctrl_dev_get_drvdata(pctldev);

 *groups = pmap->pin_names;
 *num_groups = PINS_COUNT;

 return 0;
}
