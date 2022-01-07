
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dcon_priv {int curr_src; int pending_src; TYPE_1__* client; } ;
struct dcon_gpio {int name; int flags; } ;
struct TYPE_7__ {unsigned int sci_interrupt; } ;
struct TYPE_6__ {int dev_id; } ;
struct TYPE_5__ {int dev; } ;


 int ARRAY_SIZE (struct dcon_gpio*) ;
 int BIT_GPIO12 ;
 int DCON_SOURCE_CPU ;
 int DCON_SOURCE_DCON ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int VX855_GENL_PURPOSE_OUTPUT ;
 int VX855_GPI_SCI_SMI ;
 TYPE_4__ acpi_gbl_FADT ;
 int dcon_clear_irq () ;
 int dcon_interrupt ;
 int dev_name (int *) ;
 int devm_gpiod_get (int *,int ,int ) ;
 int gpiod_add_lookup_table (TYPE_2__*) ;
 int * gpios ;
 struct dcon_gpio* gpios_asis ;
 TYPE_2__ gpios_table ;
 int inb (int ) ;
 int inl (int ) ;
 int outb (int,int ) ;
 int pr_err (char*,unsigned int,...) ;
 scalar_t__ request_irq (unsigned int,int *,int ,char*,struct dcon_priv*) ;

__attribute__((used)) static int dcon_init_xo_1_5(struct dcon_priv *dcon)
{
 unsigned int irq;
 const struct dcon_gpio *pin = &gpios_asis[0];
 int i;
 int ret;


 gpios_table.dev_id = dev_name(&dcon->client->dev);
 gpiod_add_lookup_table(&gpios_table);


 for (i = 0; i < ARRAY_SIZE(gpios_asis); i++) {
  gpios[i] = devm_gpiod_get(&dcon->client->dev, pin[i].name,
       pin[i].flags);
  if (IS_ERR(gpios[i])) {
   ret = PTR_ERR(gpios[i]);
   pr_err("failed to request %s GPIO: %d\n", pin[i].name,
          ret);
   return ret;
  }
 }

 dcon_clear_irq();


 outb(inb(VX855_GPI_SCI_SMI) | BIT_GPIO12, VX855_GPI_SCI_SMI);



 dcon->curr_src = (inl(VX855_GENL_PURPOSE_OUTPUT) & 0x1000) ?
   DCON_SOURCE_CPU : DCON_SOURCE_DCON;
 dcon->pending_src = dcon->curr_src;


 irq = acpi_gbl_FADT.sci_interrupt;
 if (request_irq(irq, &dcon_interrupt, IRQF_SHARED, "DCON", dcon)) {
  pr_err("DCON (IRQ%d) allocation failed\n", irq);
  return 1;
 }

 return 0;
}
