
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rzn1_pinctrl {scalar_t__* mdio_func; TYPE_1__* lev2; int dev; } ;
struct TYPE_2__ {int * l2_mdio; } ;


 int dev_dbg (int ,char*,int,scalar_t__) ;
 int dev_warn (int ,char*,int) ;
 int writel (scalar_t__,int *) ;

__attribute__((used)) static void rzn1_pinctrl_mdio_select(struct rzn1_pinctrl *ipctl, int mdio,
         u32 func)
{
 if (ipctl->mdio_func[mdio] >= 0 && ipctl->mdio_func[mdio] != func)
  dev_warn(ipctl->dev, "conflicting setting for mdio%d!\n", mdio);
 ipctl->mdio_func[mdio] = func;

 dev_dbg(ipctl->dev, "setting mdio%d to %u\n", mdio, func);

 writel(func, &ipctl->lev2->l2_mdio[mdio]);
}
