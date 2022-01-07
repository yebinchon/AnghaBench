
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int BUS_IOCTL ;
 long nd_ioctl (struct file*,unsigned int,unsigned long,int ) ;

__attribute__((used)) static long bus_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 return nd_ioctl(file, cmd, arg, BUS_IOCTL);
}
