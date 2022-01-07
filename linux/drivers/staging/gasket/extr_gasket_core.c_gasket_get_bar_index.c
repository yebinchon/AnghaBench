
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct gasket_driver_desc {struct gasket_bar_desc* bar_descriptions; } ;
struct gasket_dev {TYPE_1__* internal_desc; } ;
struct gasket_bar_desc {scalar_t__ permissions; scalar_t__ base; scalar_t__ size; } ;
struct TYPE_2__ {struct gasket_driver_desc* driver_desc; } ;


 int EINVAL ;
 scalar_t__ GASKET_NOMAP ;
 int GASKET_NUM_BARS ;

__attribute__((used)) static int gasket_get_bar_index(const struct gasket_dev *gasket_dev,
    ulong phys_addr)
{
 int i;
 const struct gasket_driver_desc *driver_desc;

 driver_desc = gasket_dev->internal_desc->driver_desc;
 for (i = 0; i < GASKET_NUM_BARS; ++i) {
  struct gasket_bar_desc bar_desc =
   driver_desc->bar_descriptions[i];

  if (bar_desc.permissions != GASKET_NOMAP) {
   if (phys_addr >= bar_desc.base &&
       phys_addr < (bar_desc.base + bar_desc.size)) {
    return i;
   }
  }
 }

 return -EINVAL;
}
