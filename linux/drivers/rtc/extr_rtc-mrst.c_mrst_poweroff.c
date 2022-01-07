
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static inline int mrst_poweroff(struct device *dev)
{
 return -ENOSYS;
}
