
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct slim_device {int dummy; } ;


 int slim_write (struct slim_device*,int ,int,int *) ;

int slim_writeb(struct slim_device *sdev, u32 addr, u8 value)
{
 return slim_write(sdev, addr, 1, &value);
}
