
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ion_add_cma_heaps ;
 int cma_for_each_area (int ,int *) ;

__attribute__((used)) static int ion_add_cma_heaps(void)
{
 cma_for_each_area(__ion_add_cma_heaps, ((void*)0));
 return 0;
}
