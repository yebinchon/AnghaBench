
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltq_pinmux_info {int dev; int * mfp; } ;
struct ltq_pin_group {int npins; int * pins; } ;


 int EINVAL ;
 int dev_err (int ,char*,unsigned int,...) ;
 int match_mfp (struct ltq_pinmux_info const*,int ) ;
 int match_mux (int *,unsigned int) ;

__attribute__((used)) static int match_group_mux(const struct ltq_pin_group *grp,
      const struct ltq_pinmux_info *info,
      unsigned mux)
{
 int i, pin, ret = 0;
 for (i = 0; i < grp->npins; i++) {
  pin = match_mfp(info, grp->pins[i]);
  if (pin < 0) {
   dev_err(info->dev, "could not find mfp for pin %d\n",
    grp->pins[i]);
   return -EINVAL;
  }
  ret = match_mux(&info->mfp[pin], mux);
  if (ret < 0) {
   dev_err(info->dev, "Can't find mux %d on pin%d\n",
    mux, pin);
   break;
  }
 }
 return ret;
}
