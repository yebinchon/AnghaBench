
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amba_device {int dummy; } ;


 int amba_rev (struct amba_device*) ;

__attribute__((used)) static unsigned int get_fifosize_arm(struct amba_device *dev)
{
 return amba_rev(dev) < 3 ? 16 : 32;
}
