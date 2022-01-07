
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct isp1760_udc {TYPE_1__* isp; } ;
struct TYPE_2__ {int dev; } ;


 int DC_CHIPID ;
 int DC_MODE ;
 int DC_SCRATCH ;
 int DC_SFRESET ;
 int ENODEV ;
 int dev_err (int ,char*,int,...) ;
 int isp1760_udc_read (struct isp1760_udc*,int ) ;
 int isp1760_udc_write (struct isp1760_udc*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int isp1760_udc_init(struct isp1760_udc *udc)
{
 u16 scratch;
 u32 chipid;







 isp1760_udc_write(udc, DC_SCRATCH, 0xbabe);
 chipid = isp1760_udc_read(udc, DC_CHIPID);
 scratch = isp1760_udc_read(udc, DC_SCRATCH);

 if (scratch != 0xbabe) {
  dev_err(udc->isp->dev,
   "udc: scratch test failed (0x%04x/0x%08x)\n",
   scratch, chipid);
  return -ENODEV;
 }

 if (chipid != 0x00011582 && chipid != 0x00158210) {
  dev_err(udc->isp->dev, "udc: invalid chip ID 0x%08x\n", chipid);
  return -ENODEV;
 }


 isp1760_udc_write(udc, DC_MODE, DC_SFRESET);
 usleep_range(10000, 11000);
 isp1760_udc_write(udc, DC_MODE, 0);
 usleep_range(10000, 11000);

 return 0;
}
