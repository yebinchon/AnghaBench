
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static void labpc_writeb(struct comedi_device *dev,
    unsigned int byte, unsigned long reg)
{
 writeb(byte, dev->mmio + reg);
}
