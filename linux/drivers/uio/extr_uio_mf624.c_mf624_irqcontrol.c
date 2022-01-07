
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_info {int dummy; } ;
typedef int s32 ;


 int ALL ;
 int mf624_disable_interrupt (int ,struct uio_info*) ;
 int mf624_enable_interrupt (int ,struct uio_info*) ;

__attribute__((used)) static int mf624_irqcontrol(struct uio_info *info, s32 irq_on)
{
 if (irq_on == 0)
  mf624_disable_interrupt(ALL, info);
 else if (irq_on == 1)
  mf624_enable_interrupt(ALL, info);

 return 0;
}
