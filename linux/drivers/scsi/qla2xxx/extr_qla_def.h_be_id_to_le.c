
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int al_pa; int area; int domain; } ;
typedef TYPE_1__ le_id_t ;
struct TYPE_6__ {int al_pa; int area; int domain; } ;
typedef TYPE_2__ be_id_t ;



__attribute__((used)) static inline le_id_t be_id_to_le(be_id_t id)
{
 le_id_t res;

 res.domain = id.domain;
 res.area = id.area;
 res.al_pa = id.al_pa;

 return res;
}
