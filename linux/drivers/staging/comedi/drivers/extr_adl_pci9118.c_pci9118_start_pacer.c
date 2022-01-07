
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int pacer; } ;


 int comedi_8254_pacer_enable (int ,int,int,int) ;

__attribute__((used)) static void pci9118_start_pacer(struct comedi_device *dev, int mode)
{
 if (mode == 1 || mode == 2 || mode == 4)
  comedi_8254_pacer_enable(dev->pacer, 1, 2, 1);
}
