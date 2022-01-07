
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rsvd_1; int al_pa; int area; int domain; } ;
struct TYPE_7__ {TYPE_1__ b; } ;
typedef TYPE_2__ port_id_t ;
struct TYPE_8__ {int al_pa; int area; int domain; } ;
typedef TYPE_3__ be_id_t ;



__attribute__((used)) static inline port_id_t be_to_port_id(be_id_t id)
{
 port_id_t res;

 res.b.domain = id.domain;
 res.b.area = id.area;
 res.b.al_pa = id.al_pa;
 res.b.rsvd_1 = 0;

 return res;
}
