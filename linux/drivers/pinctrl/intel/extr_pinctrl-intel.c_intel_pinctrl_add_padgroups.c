
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pinctrl {int dev; } ;
struct intel_padgroup {size_t reg_num; unsigned int size; unsigned int padown_num; scalar_t__ base; scalar_t__ gpio_base; } ;
struct intel_community {unsigned int npins; size_t ngpps; int gpp_size; struct intel_padgroup* gpps; scalar_t__ gpp_num_padown_regs; scalar_t__ pin_base; } ;


 size_t DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct intel_padgroup* devm_kcalloc (int ,size_t,int,int ) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static int intel_pinctrl_add_padgroups(struct intel_pinctrl *pctrl,
           struct intel_community *community)
{
 struct intel_padgroup *gpps;
 unsigned int npins = community->npins;
 unsigned int padown_num = 0;
 size_t ngpps, i;

 if (community->gpps)
  ngpps = community->ngpps;
 else
  ngpps = DIV_ROUND_UP(community->npins, community->gpp_size);

 gpps = devm_kcalloc(pctrl->dev, ngpps, sizeof(*gpps), GFP_KERNEL);
 if (!gpps)
  return -ENOMEM;

 for (i = 0; i < ngpps; i++) {
  if (community->gpps) {
   gpps[i] = community->gpps[i];
  } else {
   unsigned int gpp_size = community->gpp_size;

   gpps[i].reg_num = i;
   gpps[i].base = community->pin_base + i * gpp_size;
   gpps[i].size = min(gpp_size, npins);
   npins -= gpps[i].size;
  }

  if (gpps[i].size > 32)
   return -EINVAL;

  if (!gpps[i].gpio_base)
   gpps[i].gpio_base = gpps[i].base;

  gpps[i].padown_num = padown_num;





  if (community->gpp_num_padown_regs)
   padown_num += community->gpp_num_padown_regs;
  else
   padown_num += DIV_ROUND_UP(gpps[i].size * 4, 32);
 }

 community->ngpps = ngpps;
 community->gpps = gpps;

 return 0;
}
