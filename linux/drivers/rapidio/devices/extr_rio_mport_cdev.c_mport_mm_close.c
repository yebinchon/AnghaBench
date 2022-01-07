
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct rio_mport_mapping* vm_private_data; } ;
struct rio_mport_mapping {TYPE_1__* md; int ref; int phys_addr; } ;
struct TYPE_2__ {int buf_mutex; } ;


 int MMAP ;
 int kref_put (int *,int ) ;
 int mport_release_mapping ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rmcd_debug (int ,char*,int *) ;

__attribute__((used)) static void mport_mm_close(struct vm_area_struct *vma)
{
 struct rio_mport_mapping *map = vma->vm_private_data;

 rmcd_debug(MMAP, "%pad", &map->phys_addr);
 mutex_lock(&map->md->buf_mutex);
 kref_put(&map->ref, mport_release_mapping);
 mutex_unlock(&map->md->buf_mutex);
}
