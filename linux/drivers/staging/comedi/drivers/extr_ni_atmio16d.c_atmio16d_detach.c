
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int comedi_legacy_detach (struct comedi_device*) ;
 int reset_atmio16d (struct comedi_device*) ;

__attribute__((used)) static void atmio16d_detach(struct comedi_device *dev)
{
 reset_atmio16d(dev);
 comedi_legacy_detach(dev);
}
