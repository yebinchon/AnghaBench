
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_device {int visorchannel; } ;


 int visorchannel_read (int ,unsigned long,void*,unsigned long) ;

int visorbus_read_channel(struct visor_device *dev, unsigned long offset,
     void *dest, unsigned long nbytes)
{
 return visorchannel_read(dev->visorchannel, offset, dest, nbytes);
}
