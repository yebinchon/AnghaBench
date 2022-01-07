
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fwnode; } ;
struct wcove_typec {TYPE_1__ tcpc; int tcpm; int regmap; } ;
struct platform_device {int dummy; } ;


 int USBC_IRQMASK1 ;
 unsigned int USBC_IRQMASK1_ALL ;
 int USBC_IRQMASK2 ;
 unsigned int USBC_IRQMASK2_ALL ;
 int fwnode_remove_software_node (int ) ;
 struct wcove_typec* platform_get_drvdata (struct platform_device*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int tcpm_unregister_port (int ) ;

__attribute__((used)) static int wcove_typec_remove(struct platform_device *pdev)
{
 struct wcove_typec *wcove = platform_get_drvdata(pdev);
 unsigned int val;


 regmap_read(wcove->regmap, USBC_IRQMASK1, &val);
 regmap_write(wcove->regmap, USBC_IRQMASK1, val | USBC_IRQMASK1_ALL);
 regmap_read(wcove->regmap, USBC_IRQMASK2, &val);
 regmap_write(wcove->regmap, USBC_IRQMASK2, val | USBC_IRQMASK2_ALL);

 tcpm_unregister_port(wcove->tcpm);
 fwnode_remove_software_node(wcove->tcpc.fwnode);

 return 0;
}
