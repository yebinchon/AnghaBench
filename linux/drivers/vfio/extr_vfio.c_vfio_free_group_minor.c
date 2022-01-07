
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int group_idr; } ;


 int idr_remove (int *,int) ;
 TYPE_1__ vfio ;

__attribute__((used)) static void vfio_free_group_minor(int minor)
{
 idr_remove(&vfio.group_idr, minor);
}
