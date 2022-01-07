
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bcma_device {TYPE_2__* bus; } ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {int drv_mips; TYPE_1__ chipinfo; } ;


 int bcma_cpu_clock (int *) ;
 int bcma_read32 (struct bcma_device*,int) ;
 int bcma_write32 (struct bcma_device*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void bcma_hcd_4716wa(struct bcma_device *dev)
{
}
