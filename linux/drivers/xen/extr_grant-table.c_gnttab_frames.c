
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int grefs_per_grant_frame; } ;


 TYPE_1__* gnttab_interface ;

__attribute__((used)) static unsigned int gnttab_frames(unsigned int frames, unsigned int align)
{
 return (frames * gnttab_interface->grefs_per_grant_frame + align - 1) /
        align;
}
