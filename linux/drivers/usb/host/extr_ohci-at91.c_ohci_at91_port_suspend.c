
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct regmap {int dummy; } ;


 int AT91_OHCIICR_USB_SUSPEND ;
 int AT91_SFR_OHCIICR ;
 int regmap_read (struct regmap*,int ,int *) ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static int ohci_at91_port_suspend(struct regmap *regmap, u8 set)
{
 u32 regval;
 int ret;

 if (!regmap)
  return 0;

 ret = regmap_read(regmap, AT91_SFR_OHCIICR, &regval);
 if (ret)
  return ret;

 if (set)
  regval |= AT91_OHCIICR_USB_SUSPEND;
 else
  regval &= ~AT91_OHCIICR_USB_SUSPEND;

 regmap_write(regmap, AT91_SFR_OHCIICR, regval);

 return 0;
}
