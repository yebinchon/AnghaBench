
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u32 ;
struct gasket_dev {int dummy; } ;


 int gasket_dev_read_32 (struct gasket_dev*,int,int ) ;
 int gasket_dev_write_32 (struct gasket_dev*,int,int,int ) ;

__attribute__((used)) static inline void gasket_read_modify_write_32(struct gasket_dev *dev, int bar,
            ulong location, u32 value,
            u32 mask_width, u32 mask_shift)
{
 u32 mask, tmp;

 tmp = gasket_dev_read_32(dev, bar, location);
 mask = ((1 << mask_width) - 1) << mask_shift;
 tmp = (tmp & ~mask) | (value << mask_shift);
 gasket_dev_write_32(dev, tmp, bar, location);
}
