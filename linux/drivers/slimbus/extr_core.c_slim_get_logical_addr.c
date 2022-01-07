
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_device {int is_laddr_valid; } ;


 int slim_device_alloc_laddr (struct slim_device*,int) ;

int slim_get_logical_addr(struct slim_device *sbdev)
{
 if (!sbdev->is_laddr_valid)
  return slim_device_alloc_laddr(sbdev, 0);

 return 0;
}
