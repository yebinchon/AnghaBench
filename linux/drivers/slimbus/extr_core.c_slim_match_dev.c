
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_eaddr {int dummy; } ;
struct slim_device {int e_addr; } ;
struct device {int dummy; } ;


 int slim_eaddr_equal (int *,struct slim_eaddr*) ;
 struct slim_device* to_slim_device (struct device*) ;

__attribute__((used)) static int slim_match_dev(struct device *dev, void *data)
{
 struct slim_eaddr *e_addr = data;
 struct slim_device *sbdev = to_slim_device(dev);

 return slim_eaddr_equal(&sbdev->e_addr, e_addr);
}
