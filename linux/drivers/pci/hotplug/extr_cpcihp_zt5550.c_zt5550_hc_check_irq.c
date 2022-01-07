
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {void* dev_id; } ;


 int csr_int_status ;
 scalar_t__ readb (int ) ;
 TYPE_1__ zt5550_hpc ;

__attribute__((used)) static int zt5550_hc_check_irq(void *dev_id)
{
 int ret;
 u8 reg;

 ret = 0;
 if (dev_id == zt5550_hpc.dev_id) {
  reg = readb(csr_int_status);
  if (reg)
   ret = 1;
 }
 return ret;
}
