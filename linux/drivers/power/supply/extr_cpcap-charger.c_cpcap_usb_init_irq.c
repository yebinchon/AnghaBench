
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cpcap_interrupt_desc {char const* name; int irq; int node; } ;
struct cpcap_charger_ddata {int irq_list; int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int cpcap_charger_irq_thread ;
 int dev_err (int ,char*,char const*,int) ;
 struct cpcap_interrupt_desc* devm_kzalloc (int ,int,int ) ;
 int devm_request_threaded_irq (int ,int,int *,int ,int ,char const*,struct cpcap_charger_ddata*) ;
 int list_add (int *,int *) ;
 int platform_get_irq_byname (struct platform_device*,char const*) ;

__attribute__((used)) static int cpcap_usb_init_irq(struct platform_device *pdev,
         struct cpcap_charger_ddata *ddata,
         const char *name)
{
 struct cpcap_interrupt_desc *d;
 int irq, error;

 irq = platform_get_irq_byname(pdev, name);
 if (irq < 0)
  return -ENODEV;

 error = devm_request_threaded_irq(ddata->dev, irq, ((void*)0),
       cpcap_charger_irq_thread,
       IRQF_SHARED,
       name, ddata);
 if (error) {
  dev_err(ddata->dev, "could not get irq %s: %i\n",
   name, error);

  return error;
 }

 d = devm_kzalloc(ddata->dev, sizeof(*d), GFP_KERNEL);
 if (!d)
  return -ENOMEM;

 d->name = name;
 d->irq = irq;
 list_add(&d->node, &ddata->irq_list);

 return 0;
}
