
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int put_cpu_var (int ) ;
 int qman_affine_portal ;

__attribute__((used)) static inline void put_affine_portal(void)
{
 put_cpu_var(qman_affine_portal);
}
