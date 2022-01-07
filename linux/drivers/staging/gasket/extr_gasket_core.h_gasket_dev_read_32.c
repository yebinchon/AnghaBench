
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ulong ;
typedef int u32 ;
struct gasket_dev {TYPE_1__* bar_data; } ;
struct TYPE_2__ {int * virt_base; } ;


 int readl_relaxed (int *) ;

__attribute__((used)) static inline u32 gasket_dev_read_32(struct gasket_dev *dev, int bar,
         ulong location)
{
 return readl_relaxed(&dev->bar_data[bar].virt_base[location]);
}
