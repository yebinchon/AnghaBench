
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct aac_dev {TYPE_1__* safw_phys_luns; } ;
struct TYPE_2__ {int * list_length; } ;


 int get_unaligned_be32 (int *) ;

__attribute__((used)) static inline u32 aac_get_safw_phys_lun_count(struct aac_dev *dev)
{
 return get_unaligned_be32(&dev->safw_phys_luns->list_length[0])/24;
}
