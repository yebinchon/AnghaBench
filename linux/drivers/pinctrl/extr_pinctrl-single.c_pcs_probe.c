
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_13__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct pcs_soc_data {int flags; } ;
struct pcs_pdata {scalar_t__ irq; scalar_t__ rearm; } ;
struct TYPE_12__ {int npins; int owner; int * confops; int * pmxops; int * pctlops; int name; } ;
struct TYPE_14__ {scalar_t__ irq; scalar_t__ rearm; } ;
struct pcs_device {int width; int fmask; int fshift; int fmax; int foff; int pctl; int size; TYPE_1__ desc; TYPE_2__* dev; int flags; TYPE_4__ socdata; int write; int read; int base; struct resource* res; scalar_t__ bits_per_mux; int gpiofuncs; int mutex; int lock; struct device_node* np; } ;
struct device_node {int dummy; } ;


 int DRIVER_NAME ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 int PCS_FEAT_IRQ ;
 scalar_t__ PCS_HAS_IRQ ;
 scalar_t__ PCS_HAS_PINCONF ;
 int PCS_OFF_DISABLED ;
 int THIS_MODULE ;
 scalar_t__ WARN_ON (int) ;
 int __ffs (int) ;
 int dev_err (TYPE_2__*,char*) ;
 struct pcs_pdata* dev_get_platdata (TYPE_2__*) ;
 int dev_info (TYPE_2__*,char*,int ,int ) ;
 int dev_warn (TYPE_2__*,char*) ;
 int devm_ioremap (TYPE_2__*,int ,int ) ;
 struct pcs_device* devm_kzalloc (TYPE_2__*,int,int ) ;
 struct resource* devm_request_mem_region (TYPE_2__*,int ,int ,int ) ;
 scalar_t__ irq_of_parse_and_map (struct device_node*,int ) ;
 int memcpy (TYPE_4__*,struct pcs_soc_data const*,int) ;
 int mutex_init (int *) ;
 struct pcs_soc_data* of_device_get_match_data (TYPE_2__*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int pcs_add_gpio_func (struct device_node*,struct pcs_device*) ;
 int pcs_allocate_pin_table (struct pcs_device*) ;
 int pcs_free_resources (struct pcs_device*) ;
 int pcs_irq_init_chained_handler (struct pcs_device*,struct device_node*) ;
 int pcs_pinconf_ops ;
 int pcs_pinctrl_ops ;
 int pcs_pinmux_ops ;
 int pcs_quirk_missing_pinctrl_cells (struct pcs_device*,struct device_node*,int) ;
 int pcs_readb ;
 int pcs_readl ;
 int pcs_readw ;
 int pcs_writeb ;
 int pcs_writel ;
 int pcs_writew ;
 int pinctrl_enable (int ) ;
 int pinctrl_register_and_init (TYPE_1__*,TYPE_2__*,struct pcs_device*,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pcs_device*) ;
 int raw_spin_lock_init (int *) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int pcs_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct pcs_pdata *pdata;
 struct resource *res;
 struct pcs_device *pcs;
 const struct pcs_soc_data *soc;
 int ret;

 soc = of_device_get_match_data(&pdev->dev);
 if (WARN_ON(!soc))
  return -EINVAL;

 pcs = devm_kzalloc(&pdev->dev, sizeof(*pcs), GFP_KERNEL);
 if (!pcs)
  return -ENOMEM;

 pcs->dev = &pdev->dev;
 pcs->np = np;
 raw_spin_lock_init(&pcs->lock);
 mutex_init(&pcs->mutex);
 INIT_LIST_HEAD(&pcs->gpiofuncs);
 pcs->flags = soc->flags;
 memcpy(&pcs->socdata, soc, sizeof(*soc));

 ret = of_property_read_u32(np, "pinctrl-single,register-width",
       &pcs->width);
 if (ret) {
  dev_err(pcs->dev, "register width not specified\n");

  return ret;
 }

 ret = of_property_read_u32(np, "pinctrl-single,function-mask",
       &pcs->fmask);
 if (!ret) {
  pcs->fshift = __ffs(pcs->fmask);
  pcs->fmax = pcs->fmask >> pcs->fshift;
 } else {

  pcs->fmask = 0;
  pcs->fshift = 0;
  pcs->fmax = 0;
 }

 ret = of_property_read_u32(np, "pinctrl-single,function-off",
     &pcs->foff);
 if (ret)
  pcs->foff = PCS_OFF_DISABLED;

 pcs->bits_per_mux = of_property_read_bool(np,
        "pinctrl-single,bit-per-mux");
 ret = pcs_quirk_missing_pinctrl_cells(pcs, np,
           pcs->bits_per_mux ? 2 : 1);
 if (ret) {
  dev_err(&pdev->dev, "unable to patch #pinctrl-cells\n");

  return ret;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(pcs->dev, "could not get resource\n");
  return -ENODEV;
 }

 pcs->res = devm_request_mem_region(pcs->dev, res->start,
   resource_size(res), DRIVER_NAME);
 if (!pcs->res) {
  dev_err(pcs->dev, "could not get mem_region\n");
  return -EBUSY;
 }

 pcs->size = resource_size(pcs->res);
 pcs->base = devm_ioremap(pcs->dev, pcs->res->start, pcs->size);
 if (!pcs->base) {
  dev_err(pcs->dev, "could not ioremap\n");
  return -ENODEV;
 }

 platform_set_drvdata(pdev, pcs);

 switch (pcs->width) {
 case 8:
  pcs->read = pcs_readb;
  pcs->write = pcs_writeb;
  break;
 case 16:
  pcs->read = pcs_readw;
  pcs->write = pcs_writew;
  break;
 case 32:
  pcs->read = pcs_readl;
  pcs->write = pcs_writel;
  break;
 default:
  break;
 }

 pcs->desc.name = DRIVER_NAME;
 pcs->desc.pctlops = &pcs_pinctrl_ops;
 pcs->desc.pmxops = &pcs_pinmux_ops;
 if (PCS_HAS_PINCONF)
  pcs->desc.confops = &pcs_pinconf_ops;
 pcs->desc.owner = THIS_MODULE;

 ret = pcs_allocate_pin_table(pcs);
 if (ret < 0)
  goto free;

 ret = pinctrl_register_and_init(&pcs->desc, pcs->dev, pcs, &pcs->pctl);
 if (ret) {
  dev_err(pcs->dev, "could not register single pinctrl driver\n");
  goto free;
 }

 ret = pcs_add_gpio_func(np, pcs);
 if (ret < 0)
  goto free;

 pcs->socdata.irq = irq_of_parse_and_map(np, 0);
 if (pcs->socdata.irq)
  pcs->flags |= PCS_FEAT_IRQ;


 pdata = dev_get_platdata(&pdev->dev);
 if (pdata) {
  if (pdata->rearm)
   pcs->socdata.rearm = pdata->rearm;
  if (pdata->irq) {
   pcs->socdata.irq = pdata->irq;
   pcs->flags |= PCS_FEAT_IRQ;
  }
 }

 if (PCS_HAS_IRQ) {
  ret = pcs_irq_init_chained_handler(pcs, np);
  if (ret < 0)
   dev_warn(pcs->dev, "initialized with no interrupts\n");
 }

 dev_info(pcs->dev, "%i pins, size %u\n", pcs->desc.npins, pcs->size);

 return pinctrl_enable(pcs->pctl);

free:
 pcs_free_resources(pcs);

 return ret;
}
