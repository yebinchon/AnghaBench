
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_nhi {scalar_t__ iobase; } ;


 scalar_t__ REG_RING_INTERRUPT_BASE ;
 scalar_t__ REG_RING_NOTIFY_BASE ;
 int RING_INTERRUPT_REG_COUNT (struct tb_nhi*) ;
 int RING_NOTIFY_REG_COUNT (struct tb_nhi*) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void nhi_disable_interrupts(struct tb_nhi *nhi)
{
 int i = 0;

 for (i = 0; i < RING_INTERRUPT_REG_COUNT(nhi); i++)
  iowrite32(0, nhi->iobase + REG_RING_INTERRUPT_BASE + 4 * i);


 for (i = 0; i < RING_NOTIFY_REG_COUNT(nhi); i++)
  ioread32(nhi->iobase + REG_RING_NOTIFY_BASE + 4 * i);
}
