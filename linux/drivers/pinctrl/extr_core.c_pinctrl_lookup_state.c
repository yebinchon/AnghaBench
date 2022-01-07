
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_state {int dummy; } ;
struct pinctrl {int dev; } ;


 int ENODEV ;
 struct pinctrl_state* ERR_PTR (int ) ;
 struct pinctrl_state* create_state (struct pinctrl*,char const*) ;
 int dev_dbg (int ,char*,char const*) ;
 struct pinctrl_state* find_state (struct pinctrl*,char const*) ;
 scalar_t__ pinctrl_dummy_state ;

struct pinctrl_state *pinctrl_lookup_state(struct pinctrl *p,
       const char *name)
{
 struct pinctrl_state *state;

 state = find_state(p, name);
 if (!state) {
  if (pinctrl_dummy_state) {

   dev_dbg(p->dev, "using pinctrl dummy state (%s)\n",
    name);
   state = create_state(p, name);
  } else
   state = ERR_PTR(-ENODEV);
 }

 return state;
}
