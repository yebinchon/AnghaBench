
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ds1wm_data {int bus_shift; int map; TYPE_1__* pdev; scalar_t__ is_hw_big_endian; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int,int) ;
 int ioread16 (int) ;
 int ioread16be (int) ;
 int ioread32 (int) ;
 int ioread32be (int) ;
 int ioread8 (int) ;

__attribute__((used)) static inline u8 ds1wm_read_register(struct ds1wm_data *ds1wm_data, u32 reg)
{
 u32 val = 0;

 if (ds1wm_data->is_hw_big_endian) {
  switch (ds1wm_data->bus_shift) {
  case 0:
   val = ioread8(ds1wm_data->map + (reg << 0));
   break;
  case 1:
   val = ioread16be(ds1wm_data->map + (reg << 1));
   break;
  case 2:
   val = ioread32be(ds1wm_data->map + (reg << 2));
   break;
  }
 } else {
  switch (ds1wm_data->bus_shift) {
  case 0:
   val = ioread8(ds1wm_data->map + (reg << 0));
   break;
  case 1:
   val = ioread16(ds1wm_data->map + (reg << 1));
   break;
  case 2:
   val = ioread32(ds1wm_data->map + (reg << 2));
   break;
  }
 }
 dev_dbg(&ds1wm_data->pdev->dev,
  "ds1wm_read_register reg: %d, 32 bit val:%x\n", reg, val);
 return (u8)val;
}
