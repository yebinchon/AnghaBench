
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int async_synchronize_full_domain (int *) ;
 int nd_async_domain ;

void nd_synchronize(void)
{
 async_synchronize_full_domain(&nd_async_domain);
}
