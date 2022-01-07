
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct slim_device {int dummy; } ;


 int slim_read (struct slim_device*,int ,int,int*) ;

int slim_readb(struct slim_device *sdev, u32 addr)
{
 int ret;
 u8 buf;

 ret = slim_read(sdev, addr, 1, &buf);
 if (ret < 0)
  return ret;
 else
  return buf;
}
