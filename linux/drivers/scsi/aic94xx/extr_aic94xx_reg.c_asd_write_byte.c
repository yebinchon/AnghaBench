
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct asd_ha_struct {TYPE_1__* io_handle; int iospace; } ;
struct TYPE_2__ {scalar_t__ addr; } ;


 int outb (int ,unsigned long) ;
 scalar_t__ unlikely (int ) ;
 int wmb () ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void asd_write_byte(struct asd_ha_struct *asd_ha,
      unsigned long offs, u8 val)
{
 if (unlikely(asd_ha->iospace))
  outb(val,
       (unsigned long)asd_ha->io_handle[0].addr + (offs & 0xFF));
 else
  writeb(val, asd_ha->io_handle[0].addr + offs);
 wmb();
}
