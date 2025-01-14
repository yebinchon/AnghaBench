
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int u32 ;
struct twl4030_bci_platform_data {int bb_uamp; int bb_uvolt; } ;
struct TYPE_18__ {int (* notifier_call ) (TYPE_2__*,int ,int *) ;} ;
struct twl4030_bci {int ichg_eoc; int ichg_lo; int ichg_hi; int ac_cur; int usb_cur_target; TYPE_4__* transceiver; TYPE_2__ usb_nb; TYPE_4__* ac; TYPE_4__* usb; void* irq_bci; void* irq_chg; TYPE_3__* dev; TYPE_4__* channel_vac; int current_worker; int work; void* ac_mode; void* usb_mode; } ;
struct TYPE_19__ {TYPE_1__* of_node; struct twl4030_bci_platform_data* platform_data; } ;
struct platform_device {TYPE_3__ dev; int name; } ;
struct device_node {int dummy; } ;
struct TYPE_20__ {int last_event; int dev; } ;
struct TYPE_17__ {int parent; } ;


 void* CHARGE_AUTO ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (TYPE_4__*) ;
 int IS_ERR_OR_NULL (TYPE_4__*) ;
 int PTR_ERR (TYPE_4__*) ;
 int TWL4030_ACCHGOV ;
 int TWL4030_BATSTS ;
 int TWL4030_ICHGEOC ;
 int TWL4030_ICHGLOW ;
 int TWL4030_INTERRUPTS_BCIIMR1A ;
 int TWL4030_INTERRUPTS_BCIIMR2A ;
 int TWL4030_MODULE_INTERRUPTS ;
 int TWL4030_TBATOR1 ;
 int TWL4030_TBATOR2 ;
 int TWL4030_VBATOV ;
 int TWL4030_VBUSOV ;
 scalar_t__ allow_usb ;
 int dev_attr_mode ;
 int dev_err (TYPE_3__*,char*,int,...) ;
 int dev_warn (TYPE_3__*,char*,...) ;
 scalar_t__ device_create_file (int *,int *) ;
 TYPE_4__* devm_iio_channel_get (TYPE_3__*,char*) ;
 struct twl4030_bci* devm_kzalloc (TYPE_3__*,int,int ) ;
 void* devm_power_supply_register (TYPE_3__*,int *,int *) ;
 int devm_request_threaded_irq (TYPE_3__*,void*,int *,int ,int ,int ,struct twl4030_bci*) ;
 TYPE_4__* devm_usb_get_phy_by_node (TYPE_3__*,struct device_node*,TYPE_2__*) ;
 struct device_node* of_get_compatible_child (int ,char*) ;
 int of_node_put (struct device_node*) ;
 void* platform_get_irq (struct platform_device*,int) ;
 int platform_set_drvdata (struct platform_device*,struct twl4030_bci*) ;
 int twl4030_bci_ac_desc ;
 int twl4030_bci_interrupt ;
 struct twl4030_bci_platform_data* twl4030_bci_parse_dt (TYPE_3__*) ;
 int twl4030_bci_usb_desc ;
 int twl4030_bci_usb_ncb (TYPE_2__*,int ,int *) ;
 int twl4030_bci_usb_work ;
 int twl4030_charger_enable_ac (struct twl4030_bci*,int) ;
 int twl4030_charger_enable_backup (int ,int ) ;
 int twl4030_charger_enable_usb (struct twl4030_bci*,int) ;
 int twl4030_charger_interrupt ;
 int twl4030_charger_update_current (struct twl4030_bci*) ;
 int twl4030_current_worker ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static int twl4030_bci_probe(struct platform_device *pdev)
{
 struct twl4030_bci *bci;
 const struct twl4030_bci_platform_data *pdata = pdev->dev.platform_data;
 int ret;
 u32 reg;

 bci = devm_kzalloc(&pdev->dev, sizeof(*bci), GFP_KERNEL);
 if (bci == ((void*)0))
  return -ENOMEM;

 if (!pdata)
  pdata = twl4030_bci_parse_dt(&pdev->dev);

 bci->ichg_eoc = 80100;
 bci->ichg_lo = 241000;
 bci->ichg_hi = 500000;
 bci->ac_cur = 500000;
 if (allow_usb)
  bci->usb_cur_target = 500000;
 else
  bci->usb_cur_target = 100000;
 bci->usb_mode = CHARGE_AUTO;
 bci->ac_mode = CHARGE_AUTO;

 bci->dev = &pdev->dev;
 bci->irq_chg = platform_get_irq(pdev, 0);
 bci->irq_bci = platform_get_irq(pdev, 1);

 platform_set_drvdata(pdev, bci);

 INIT_WORK(&bci->work, twl4030_bci_usb_work);
 INIT_DELAYED_WORK(&bci->current_worker, twl4030_current_worker);

 bci->channel_vac = devm_iio_channel_get(&pdev->dev, "vac");
 if (IS_ERR(bci->channel_vac)) {
  ret = PTR_ERR(bci->channel_vac);
  if (ret == -EPROBE_DEFER)
   return ret;
  dev_warn(&pdev->dev, "could not request vac iio channel (%d)",
   ret);
  bci->channel_vac = ((void*)0);
 }

 if (bci->dev->of_node) {
  struct device_node *phynode;

  phynode = of_get_compatible_child(bci->dev->of_node->parent,
        "ti,twl4030-usb");
  if (phynode) {
   bci->usb_nb.notifier_call = twl4030_bci_usb_ncb;
   bci->transceiver = devm_usb_get_phy_by_node(
    bci->dev, phynode, &bci->usb_nb);
   of_node_put(phynode);
   if (IS_ERR(bci->transceiver)) {
    ret = PTR_ERR(bci->transceiver);
    if (ret == -EPROBE_DEFER)
     return ret;
    dev_warn(&pdev->dev, "could not request transceiver (%d)",
     ret);
    bci->transceiver = ((void*)0);
   }
  }
 }

 bci->ac = devm_power_supply_register(&pdev->dev, &twl4030_bci_ac_desc,
          ((void*)0));
 if (IS_ERR(bci->ac)) {
  ret = PTR_ERR(bci->ac);
  dev_err(&pdev->dev, "failed to register ac: %d\n", ret);
  return ret;
 }

 bci->usb = devm_power_supply_register(&pdev->dev, &twl4030_bci_usb_desc,
           ((void*)0));
 if (IS_ERR(bci->usb)) {
  ret = PTR_ERR(bci->usb);
  dev_err(&pdev->dev, "failed to register usb: %d\n", ret);
  return ret;
 }

 ret = devm_request_threaded_irq(&pdev->dev, bci->irq_chg, ((void*)0),
   twl4030_charger_interrupt, IRQF_ONESHOT, pdev->name,
   bci);
 if (ret < 0) {
  dev_err(&pdev->dev, "could not request irq %d, status %d\n",
   bci->irq_chg, ret);
  return ret;
 }

 ret = devm_request_threaded_irq(&pdev->dev, bci->irq_bci, ((void*)0),
   twl4030_bci_interrupt, IRQF_ONESHOT, pdev->name, bci);
 if (ret < 0) {
  dev_err(&pdev->dev, "could not request irq %d, status %d\n",
   bci->irq_bci, ret);
  return ret;
 }


 reg = ~(u32)(TWL4030_ICHGLOW | TWL4030_ICHGEOC | TWL4030_TBATOR2 |
  TWL4030_TBATOR1 | TWL4030_BATSTS);
 ret = twl_i2c_write_u8(TWL4030_MODULE_INTERRUPTS, reg,
          TWL4030_INTERRUPTS_BCIIMR1A);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to unmask interrupts: %d\n", ret);
  return ret;
 }

 reg = ~(u32)(TWL4030_VBATOV | TWL4030_VBUSOV | TWL4030_ACCHGOV);
 ret = twl_i2c_write_u8(TWL4030_MODULE_INTERRUPTS, reg,
          TWL4030_INTERRUPTS_BCIIMR2A);
 if (ret < 0)
  dev_warn(&pdev->dev, "failed to unmask interrupts: %d\n", ret);

 twl4030_charger_update_current(bci);
 if (device_create_file(&bci->usb->dev, &dev_attr_mode))
  dev_warn(&pdev->dev, "could not create sysfs file\n");
 if (device_create_file(&bci->ac->dev, &dev_attr_mode))
  dev_warn(&pdev->dev, "could not create sysfs file\n");

 twl4030_charger_enable_ac(bci, 1);
 if (!IS_ERR_OR_NULL(bci->transceiver))
  twl4030_bci_usb_ncb(&bci->usb_nb,
        bci->transceiver->last_event,
        ((void*)0));
 else
  twl4030_charger_enable_usb(bci, 0);
 if (pdata)
  twl4030_charger_enable_backup(pdata->bb_uvolt,
           pdata->bb_uamp);
 else
  twl4030_charger_enable_backup(0, 0);

 return 0;
}
