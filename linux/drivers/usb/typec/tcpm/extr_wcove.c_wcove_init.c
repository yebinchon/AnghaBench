
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcove_typec {int regmap; } ;
struct tcpc_dev {int dummy; } ;


 int USBC_CONTROL1 ;
 int USBC_IRQMASK1 ;
 int USBC_IRQMASK2 ;
 int regmap_write (int ,int ,int ) ;
 struct wcove_typec* tcpc_to_wcove (struct tcpc_dev*) ;

__attribute__((used)) static int wcove_init(struct tcpc_dev *tcpc)
{
 struct wcove_typec *wcove = tcpc_to_wcove(tcpc);
 int ret;

 ret = regmap_write(wcove->regmap, USBC_CONTROL1, 0);
 if (ret)
  return ret;


 ret = regmap_write(wcove->regmap, USBC_IRQMASK1, 0);
 if (ret)
  return ret;

 return regmap_write(wcove->regmap, USBC_IRQMASK2, 0);
}
