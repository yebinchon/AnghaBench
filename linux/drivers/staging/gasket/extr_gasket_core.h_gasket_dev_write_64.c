
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ulong ;
typedef int u64 ;
struct gasket_dev {TYPE_1__* bar_data; } ;
struct TYPE_2__ {int * virt_base; } ;


 int writeq_relaxed (int ,int *) ;

__attribute__((used)) static inline void gasket_dev_write_64(struct gasket_dev *dev, u64 value,
           int bar, ulong location)
{
 writeq_relaxed(value, &dev->bar_data[bar].virt_base[location]);
}
