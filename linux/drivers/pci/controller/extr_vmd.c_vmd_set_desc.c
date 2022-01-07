
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct msi_desc {int dummy; } ;
struct TYPE_3__ {struct msi_desc* desc; } ;
typedef TYPE_1__ msi_alloc_info_t ;



__attribute__((used)) static void vmd_set_desc(msi_alloc_info_t *arg, struct msi_desc *desc)
{
 arg->desc = desc;
}
