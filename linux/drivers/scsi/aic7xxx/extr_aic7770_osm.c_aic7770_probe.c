
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {scalar_t__ driver_data; } ;
struct eisa_device {int base_addr; TYPE_1__ id; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ ioport; } ;
struct ahc_softc {TYPE_2__ bsh; struct device* dev; } ;


 int AHC_EISA_SLOT_OFFSET ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 struct ahc_softc* ahc_alloc (int *,char*) ;
 int ahc_free (struct ahc_softc*) ;
 int ahc_linux_register_host (struct ahc_softc*,int *) ;
 int aic7770_config (struct ahc_softc*,scalar_t__,int) ;
 scalar_t__ aic7770_ident_table ;
 int aic7xxx_driver_template ;
 int dev_set_drvdata (struct device*,struct ahc_softc*) ;
 char* kstrdup (char*,int ) ;
 int sprintf (char*,char*,int) ;
 struct eisa_device* to_eisa_device (struct device*) ;

__attribute__((used)) static int
aic7770_probe(struct device *dev)
{
 struct eisa_device *edev = to_eisa_device(dev);
 u_int eisaBase = edev->base_addr+AHC_EISA_SLOT_OFFSET;
 struct ahc_softc *ahc;
 char buf[80];
 char *name;
 int error;

 sprintf(buf, "ahc_eisa:%d", eisaBase >> 12);
 name = kstrdup(buf, GFP_ATOMIC);
 if (name == ((void*)0))
  return (ENOMEM);
 ahc = ahc_alloc(&aic7xxx_driver_template, name);
 if (ahc == ((void*)0))
  return (ENOMEM);
 ahc->dev = dev;
 error = aic7770_config(ahc, aic7770_ident_table + edev->id.driver_data,
          eisaBase);
 if (error != 0) {
  ahc->bsh.ioport = 0;
  ahc_free(ahc);
  return (error);
 }

  dev_set_drvdata(dev, ahc);

 error = ahc_linux_register_host(ahc, &aic7xxx_driver_template);
 return (error);
}
