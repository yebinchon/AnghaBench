
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenfb_info {int irq; scalar_t__ update_wanted; } ;


 int unbind_from_irqhandler (int,struct xenfb_info*) ;

__attribute__((used)) static void xenfb_disconnect_backend(struct xenfb_info *info)
{

 info->update_wanted = 0;
 if (info->irq >= 0)
  unbind_from_irqhandler(info->irq, info);
 info->irq = -1;
}
