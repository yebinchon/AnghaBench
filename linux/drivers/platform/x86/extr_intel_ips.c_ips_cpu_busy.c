
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ips_driver {int dummy; } ;


 int FSHIFT ;
 int* avenrun ;

__attribute__((used)) static bool ips_cpu_busy(struct ips_driver *ips)
{
 if ((avenrun[0] >> FSHIFT) > 1)
  return 1;

 return 0;
}
