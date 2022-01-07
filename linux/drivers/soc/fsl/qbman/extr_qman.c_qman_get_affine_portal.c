
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_portal {int dummy; } ;


 struct qman_portal** affine_portals ;

struct qman_portal *qman_get_affine_portal(int cpu)
{
 return affine_portals[cpu];
}
