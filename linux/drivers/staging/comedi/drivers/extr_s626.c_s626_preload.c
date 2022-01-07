
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct comedi_device {int dummy; } ;


 scalar_t__ S626_LP_CNTR (unsigned int) ;
 int s626_debi_write (struct comedi_device*,scalar_t__,int) ;

__attribute__((used)) static void s626_preload(struct comedi_device *dev,
    unsigned int chan, u32 value)
{
 s626_debi_write(dev, S626_LP_CNTR(chan), value);
 s626_debi_write(dev, S626_LP_CNTR(chan) + 2, value >> 16);
}
