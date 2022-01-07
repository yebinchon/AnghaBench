
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int dev_err (TYPE_1__*,char*) ;
 int irq_of_parse_and_map (int ,int ) ;
 int mpc512x_psc_spi_do_probe (TYPE_1__*,int ,int ,int ) ;
 int * of_get_address (int ,int ,scalar_t__*,int *) ;
 scalar_t__ of_translate_address (int ,int const*) ;

__attribute__((used)) static int mpc512x_psc_spi_of_probe(struct platform_device *op)
{
 const u32 *regaddr_p;
 u64 regaddr64, size64;

 regaddr_p = of_get_address(op->dev.of_node, 0, &size64, ((void*)0));
 if (!regaddr_p) {
  dev_err(&op->dev, "Invalid PSC address\n");
  return -EINVAL;
 }
 regaddr64 = of_translate_address(op->dev.of_node, regaddr_p);

 return mpc512x_psc_spi_do_probe(&op->dev, (u32) regaddr64, (u32) size64,
    irq_of_parse_and_map(op->dev.of_node, 0));
}
