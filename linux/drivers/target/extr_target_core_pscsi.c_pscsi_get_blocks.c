
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_device {int dummy; } ;
struct pscsi_dev_virt {TYPE_2__* pdv_bd; } ;
typedef int sector_t ;
struct TYPE_4__ {TYPE_1__* bd_part; } ;
struct TYPE_3__ {int nr_sects; } ;


 struct pscsi_dev_virt* PSCSI_DEV (struct se_device*) ;

__attribute__((used)) static sector_t pscsi_get_blocks(struct se_device *dev)
{
 struct pscsi_dev_virt *pdv = PSCSI_DEV(dev);

 if (pdv->pdv_bd && pdv->pdv_bd->bd_part)
  return pdv->pdv_bd->bd_part->nr_sects;

 return 0;
}
