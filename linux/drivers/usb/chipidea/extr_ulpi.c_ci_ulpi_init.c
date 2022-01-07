
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int write; int read; } ;
struct ci_hdrc {int ulpi; int dev; TYPE_2__ ulpi_ops; TYPE_1__* platdata; } ;
struct TYPE_3__ {scalar_t__ phy_mode; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR_OR_ZERO (int ) ;
 scalar_t__ USBPHY_INTERFACE_MODE_ULPI ;
 int ci_ulpi_read ;
 int ci_ulpi_write ;
 int dev_err (int ,char*) ;
 int hw_phymode_configure (struct ci_hdrc*) ;
 int ulpi_register_interface (int ,TYPE_2__*) ;

int ci_ulpi_init(struct ci_hdrc *ci)
{
 if (ci->platdata->phy_mode != USBPHY_INTERFACE_MODE_ULPI)
  return 0;





 hw_phymode_configure(ci);

 ci->ulpi_ops.read = ci_ulpi_read;
 ci->ulpi_ops.write = ci_ulpi_write;
 ci->ulpi = ulpi_register_interface(ci->dev, &ci->ulpi_ops);
 if (IS_ERR(ci->ulpi))
  dev_err(ci->dev, "failed to register ULPI interface");

 return PTR_ERR_OR_ZERO(ci->ulpi);
}
