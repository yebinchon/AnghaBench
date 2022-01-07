
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ds1wm_data {int bus_shift; int map; scalar_t__ is_hw_big_endian; } ;


 int iowrite16 (int ,int) ;
 int iowrite16be (int ,int) ;
 int iowrite32 (int,int) ;
 int iowrite32be (int,int) ;
 int iowrite8 (int ,int) ;

__attribute__((used)) static inline void ds1wm_write_register(struct ds1wm_data *ds1wm_data, u32 reg,
     u8 val)
{
 if (ds1wm_data->is_hw_big_endian) {
  switch (ds1wm_data->bus_shift) {
  case 0:
   iowrite8(val, ds1wm_data->map + (reg << 0));
   break;
  case 1:
   iowrite16be((u16)val, ds1wm_data->map + (reg << 1));
   break;
  case 2:
   iowrite32be((u32)val, ds1wm_data->map + (reg << 2));
   break;
  }
 } else {
  switch (ds1wm_data->bus_shift) {
  case 0:
   iowrite8(val, ds1wm_data->map + (reg << 0));
   break;
  case 1:
   iowrite16((u16)val, ds1wm_data->map + (reg << 1));
   break;
  case 2:
   iowrite32((u32)val, ds1wm_data->map + (reg << 2));
   break;
  }
 }
}
