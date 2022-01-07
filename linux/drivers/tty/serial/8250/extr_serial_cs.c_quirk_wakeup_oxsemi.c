
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_info {scalar_t__ c950ctrl; } ;
struct pcmcia_device {struct serial_info* priv; } ;


 int outb (int,scalar_t__) ;

__attribute__((used)) static void quirk_wakeup_oxsemi(struct pcmcia_device *link)
{
 struct serial_info *info = link->priv;

 if (info->c950ctrl)
  outb(12, info->c950ctrl + 1);
}
