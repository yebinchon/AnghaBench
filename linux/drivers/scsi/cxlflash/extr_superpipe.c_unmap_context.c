
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctx_info {TYPE_1__* file; } ;
struct TYPE_2__ {int f_mapping; } ;


 int unmap_mapping_range (int ,int ,int ,int) ;

__attribute__((used)) static void unmap_context(struct ctx_info *ctxi)
{
 unmap_mapping_range(ctxi->file->f_mapping, 0, 0, 1);
}
