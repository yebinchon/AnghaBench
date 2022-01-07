
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maple_device {int unit; size_t port; } ;


 int* subdevice_map ;

__attribute__((used)) static void maple_clean_submap(struct maple_device *mdev)
{
 int killbit;

 killbit = (mdev->unit > 0 ? (1 << (mdev->unit - 1)) & 0x1f : 0x20);
 killbit = ~killbit;
 killbit &= 0xFF;
 subdevice_map[mdev->port] = subdevice_map[mdev->port] & killbit;
}
