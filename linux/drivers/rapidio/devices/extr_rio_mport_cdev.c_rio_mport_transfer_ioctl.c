
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int rio_mport_transfer_ioctl(struct file *filp, void *arg)
{
 return -ENODEV;
}
