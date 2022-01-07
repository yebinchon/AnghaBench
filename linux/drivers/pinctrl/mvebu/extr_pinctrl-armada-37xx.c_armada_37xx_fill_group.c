
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct armada_37xx_pinctrl {int ngroups; int nfuncs; TYPE_1__* data; int dev; int funcs; struct armada_37xx_pin_group* groups; } ;
struct armada_37xx_pin_group {int npins; int extra_npins; scalar_t__* funcs; scalar_t__ extra_pin; scalar_t__* pins; scalar_t__ start_pin; } ;
struct TYPE_2__ {int nr_pins; } ;


 int ENOMEM ;
 int EOVERFLOW ;
 int GFP_KERNEL ;
 int NB_FUNCS ;
 int armada_37xx_add_function (int ,int*,scalar_t__) ;
 int dev_err (int ,char*,int) ;
 scalar_t__* devm_kcalloc (int ,int,int,int ) ;

__attribute__((used)) static int armada_37xx_fill_group(struct armada_37xx_pinctrl *info)
{
 int n, num = 0, funcsize = info->data->nr_pins;

 for (n = 0; n < info->ngroups; n++) {
  struct armada_37xx_pin_group *grp = &info->groups[n];
  int i, j, f;

  grp->pins = devm_kcalloc(info->dev,
      grp->npins + grp->extra_npins,
      sizeof(*grp->pins),
      GFP_KERNEL);
  if (!grp->pins)
   return -ENOMEM;

  for (i = 0; i < grp->npins; i++)
   grp->pins[i] = grp->start_pin + i;

  for (j = 0; j < grp->extra_npins; j++)
   grp->pins[i+j] = grp->extra_pin + j;

  for (f = 0; (f < NB_FUNCS) && grp->funcs[f]; f++) {
   int ret;

   ret = armada_37xx_add_function(info->funcs, &funcsize,
         grp->funcs[f]);
   if (ret == -EOVERFLOW)
    dev_err(info->dev,
     "More functions than pins(%d)\n",
     info->data->nr_pins);
   if (ret < 0)
    continue;
   num++;
  }
 }

 info->nfuncs = num;

 return 0;
}
