
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct allegro_dev {int v4l2_dev; int sram; } ;


 int debug ;
 int regmap_bulk_write (int ,int,int const* const,size_t) ;
 int v4l2_dbg (int,int ,int *,char*,size_t) ;
 int v4l2_err (int *,char*,int) ;

__attribute__((used)) static void allegro_copy_firmware(struct allegro_dev *dev,
      const u8 * const buf, size_t size)
{
 int err = 0;

 v4l2_dbg(1, debug, &dev->v4l2_dev,
   "copy mcu firmware (%zu B) to SRAM\n", size);
 err = regmap_bulk_write(dev->sram, 0x0, buf, size / 4);
 if (err)
  v4l2_err(&dev->v4l2_dev,
    "failed to copy firmware: %d\n", err);
}
