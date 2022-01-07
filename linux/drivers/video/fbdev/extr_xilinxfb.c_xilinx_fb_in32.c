
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xilinxfb_drvdata {int flags; int dcr_host; scalar_t__ regs; } ;


 int BUS_ACCESS_FLAG ;
 int LITTLE_ENDIAN_ACCESS ;
 int dcr_read (int ,int) ;
 int ioread32 (scalar_t__) ;
 int ioread32be (scalar_t__) ;

__attribute__((used)) static u32 xilinx_fb_in32(struct xilinxfb_drvdata *drvdata, u32 offset)
{
 if (drvdata->flags & BUS_ACCESS_FLAG) {
  if (drvdata->flags & LITTLE_ENDIAN_ACCESS)
   return ioread32(drvdata->regs + (offset << 2));
  else
   return ioread32be(drvdata->regs + (offset << 2));
 }




 return 0;
}
