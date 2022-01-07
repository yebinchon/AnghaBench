
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_pagelist_info {int dummy; } ;
struct vchiq_bulk {scalar_t__ actual; scalar_t__ remote_data; } ;


 int free_pagelist (struct vchiq_pagelist_info*,scalar_t__) ;

void
vchiq_complete_bulk(struct vchiq_bulk *bulk)
{
 if (bulk && bulk->remote_data && bulk->actual)
  free_pagelist((struct vchiq_pagelist_info *)bulk->remote_data,
         bulk->actual);
}
