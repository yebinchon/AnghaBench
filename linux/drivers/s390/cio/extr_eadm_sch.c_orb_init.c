
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int compat1; int compat2; int fmt; int x; } ;
union orb {TYPE_1__ eadm; } ;


 int memset (union orb*,int ,int) ;

__attribute__((used)) static void orb_init(union orb *orb)
{
 memset(orb, 0, sizeof(union orb));
 orb->eadm.compat1 = 1;
 orb->eadm.compat2 = 1;
 orb->eadm.fmt = 1;
 orb->eadm.x = 1;
}
