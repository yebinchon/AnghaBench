
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xilinxfb_drvdata {int flags; int dcr_host; scalar_t__ regs; } ;


 int BUS_ACCESS_FLAG ;
 int LITTLE_ENDIAN_ACCESS ;
 int dcr_write (int ,int,int) ;
 int iowrite32 (int,scalar_t__) ;
 int iowrite32be (int,scalar_t__) ;

__attribute__((used)) static void xilinx_fb_out32(struct xilinxfb_drvdata *drvdata, u32 offset,
       u32 val)
{
 if (drvdata->flags & BUS_ACCESS_FLAG) {
  if (drvdata->flags & LITTLE_ENDIAN_ACCESS)
   iowrite32(val, drvdata->regs + (offset << 2));
  else
   iowrite32be(val, drvdata->regs + (offset << 2));
 }




}
