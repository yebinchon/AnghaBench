
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_state {char const* name; int node; int settings; } ;
struct pinctrl {int states; } ;


 int ENOMEM ;
 struct pinctrl_state* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct pinctrl_state* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct pinctrl_state *create_state(struct pinctrl *p,
       const char *name)
{
 struct pinctrl_state *state;

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return ERR_PTR(-ENOMEM);

 state->name = name;
 INIT_LIST_HEAD(&state->settings);

 list_add_tail(&state->node, &p->states);

 return state;
}
