
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reset_controller_dev {int dummy; } ;
struct imx7_src {TYPE_1__* signals; } ;
struct TYPE_2__ {unsigned int bit; } ;




 int imx7_reset_update (struct imx7_src*,unsigned long,unsigned int) ;
 struct imx7_src* to_imx7_src (struct reset_controller_dev*) ;
 int udelay (int) ;

__attribute__((used)) static int imx7_reset_set(struct reset_controller_dev *rcdev,
     unsigned long id, bool assert)
{
 struct imx7_src *imx7src = to_imx7_src(rcdev);
 const unsigned int bit = imx7src->signals[id].bit;
 unsigned int value = assert ? bit : 0;

 switch (id) {
 case 129:




  if (!assert)
   udelay(10);
  break;

 case 128:
  value = assert ? 0 : bit;
  break;
 }

 return imx7_reset_update(imx7src, id, value);
}
