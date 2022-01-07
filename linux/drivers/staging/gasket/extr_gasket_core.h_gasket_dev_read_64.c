
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ulong ;
struct gasket_dev {TYPE_1__* bar_data; } ;
struct TYPE_2__ {int * virt_base; } ;


 size_t readq_relaxed (int *) ;

__attribute__((used)) static inline ulong gasket_dev_read_64(struct gasket_dev *gasket_dev, int bar,
           ulong location)
{
 return readq_relaxed(&gasket_dev->bar_data[bar].virt_base[location]);
}
