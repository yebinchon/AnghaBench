
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef unsigned long long u64 ;
struct gasket_dev {int dummy; } ;


 unsigned long long gasket_dev_read_64 (struct gasket_dev*,int,int ) ;
 int gasket_dev_write_64 (struct gasket_dev*,unsigned long long,int,int ) ;

__attribute__((used)) static inline void gasket_read_modify_write_64(struct gasket_dev *dev, int bar,
            ulong location, u64 value,
            u64 mask_width, u64 mask_shift)
{
 u64 mask, tmp;

 tmp = gasket_dev_read_64(dev, bar, location);
 mask = ((1ULL << mask_width) - 1) << mask_shift;
 tmp = (tmp & ~mask) | (value << mask_shift);
 gasket_dev_write_64(dev, tmp, bar, location);
}
