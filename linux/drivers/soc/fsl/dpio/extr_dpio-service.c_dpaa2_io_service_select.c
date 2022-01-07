
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_io {int dummy; } ;


 int DPAA2_IO_ANY_CPU ;
 struct dpaa2_io* service_select (int *) ;
 struct dpaa2_io* service_select_by_cpu (int *,int) ;

struct dpaa2_io *dpaa2_io_service_select(int cpu)
{
 if (cpu == DPAA2_IO_ANY_CPU)
  return service_select(((void*)0));

 return service_select_by_cpu(((void*)0), cpu);
}
