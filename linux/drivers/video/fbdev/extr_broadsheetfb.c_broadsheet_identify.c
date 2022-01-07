
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct device {int dummy; } ;
struct broadsheetfb_par {TYPE_1__* info; } ;
struct TYPE_2__ {struct device* device; } ;


 int BS_REG_PRC ;
 int BS_REG_REV ;
 int broadsheet_read_reg (struct broadsheetfb_par*,int ) ;
 int dev_info (struct device*,char*,int,int) ;
 int dev_warn (struct device*,char*) ;

__attribute__((used)) static void broadsheet_identify(struct broadsheetfb_par *par)
{
 u16 rev, prc;
 struct device *dev = par->info->device;

 rev = broadsheet_read_reg(par, BS_REG_REV);
 prc = broadsheet_read_reg(par, BS_REG_PRC);
 dev_info(dev, "Broadsheet Rev 0x%x, Product Code 0x%x\n", rev, prc);

 if (prc != 0x0047)
  dev_warn(dev, "Unrecognized Broadsheet Product Code\n");
 if (rev != 0x0100)
  dev_warn(dev, "Unrecognized Broadsheet Revision\n");
}
