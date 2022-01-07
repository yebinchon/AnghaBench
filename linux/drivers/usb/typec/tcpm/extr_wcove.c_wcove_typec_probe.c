
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fwnode; int pd_transmit; int set_roles; int set_pd_rx; int start_toggling; int set_current_limit; int set_vconn; int set_polarity; int get_cc; int set_cc; int set_vbus; int get_vbus; int init; } ;
struct wcove_typec {TYPE_2__ tcpc; int tcpm; TYPE_1__* dev; int guid; int regmap; int lock; } ;
struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct intel_soc_pmic {int irq_chip_data_chgr; int regmap; } ;


 int ACPI_HANDLE (TYPE_1__*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WCOVE_DSM_UUID ;
 int acpi_check_dsm (int ,int *,int ,int) ;
 int dev_err (TYPE_1__*,char*) ;
 struct intel_soc_pmic* dev_get_drvdata (int ) ;
 struct wcove_typec* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int ,char*,struct wcove_typec*) ;
 int fwnode_create_software_node (int ,int *) ;
 int fwnode_remove_software_node (int ) ;
 int guid_parse (int ,int *) ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct wcove_typec*) ;
 int regmap_irq_get_virq (int ,int) ;
 int tcpm_register_port (TYPE_1__*,TYPE_2__*) ;
 int tcpm_unregister_port (int ) ;
 int wcove_get_cc ;
 int wcove_get_vbus ;
 int wcove_init ;
 int wcove_pd_transmit ;
 int wcove_props ;
 int wcove_set_cc ;
 int wcove_set_current_limit ;
 int wcove_set_pd_rx ;
 int wcove_set_polarity ;
 int wcove_set_roles ;
 int wcove_set_vbus ;
 int wcove_set_vconn ;
 int wcove_start_toggling ;
 int wcove_typec_irq ;

__attribute__((used)) static int wcove_typec_probe(struct platform_device *pdev)
{
 struct intel_soc_pmic *pmic = dev_get_drvdata(pdev->dev.parent);
 struct wcove_typec *wcove;
 int irq;
 int ret;

 wcove = devm_kzalloc(&pdev->dev, sizeof(*wcove), GFP_KERNEL);
 if (!wcove)
  return -ENOMEM;

 mutex_init(&wcove->lock);
 wcove->dev = &pdev->dev;
 wcove->regmap = pmic->regmap;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 irq = regmap_irq_get_virq(pmic->irq_chip_data_chgr, irq);
 if (irq < 0)
  return irq;

 ret = guid_parse(WCOVE_DSM_UUID, &wcove->guid);
 if (ret)
  return ret;

 if (!acpi_check_dsm(ACPI_HANDLE(&pdev->dev), &wcove->guid, 0, 0x1f)) {
  dev_err(&pdev->dev, "Missing _DSM functions\n");
  return -ENODEV;
 }

 wcove->tcpc.init = wcove_init;
 wcove->tcpc.get_vbus = wcove_get_vbus;
 wcove->tcpc.set_vbus = wcove_set_vbus;
 wcove->tcpc.set_cc = wcove_set_cc;
 wcove->tcpc.get_cc = wcove_get_cc;
 wcove->tcpc.set_polarity = wcove_set_polarity;
 wcove->tcpc.set_vconn = wcove_set_vconn;
 wcove->tcpc.set_current_limit = wcove_set_current_limit;
 wcove->tcpc.start_toggling = wcove_start_toggling;

 wcove->tcpc.set_pd_rx = wcove_set_pd_rx;
 wcove->tcpc.set_roles = wcove_set_roles;
 wcove->tcpc.pd_transmit = wcove_pd_transmit;

 wcove->tcpc.fwnode = fwnode_create_software_node(wcove_props, ((void*)0));
 if (IS_ERR(wcove->tcpc.fwnode))
  return PTR_ERR(wcove->tcpc.fwnode);

 wcove->tcpm = tcpm_register_port(wcove->dev, &wcove->tcpc);
 if (IS_ERR(wcove->tcpm)) {
  fwnode_remove_software_node(wcove->tcpc.fwnode);
  return PTR_ERR(wcove->tcpm);
 }

 ret = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
     wcove_typec_irq, IRQF_ONESHOT,
     "wcove_typec", wcove);
 if (ret) {
  tcpm_unregister_port(wcove->tcpm);
  fwnode_remove_software_node(wcove->tcpc.fwnode);
  return ret;
 }

 platform_set_drvdata(pdev, wcove);
 return 0;
}
