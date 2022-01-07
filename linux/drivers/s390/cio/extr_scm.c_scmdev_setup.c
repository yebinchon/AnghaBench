
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int groups; int release; int * bus; int parent; } ;
struct TYPE_3__ {int res_id; int release; int rank; int data_state; int oper_state; int persistence; } ;
struct scm_device {unsigned int nr_max_block; unsigned long size; TYPE_2__ dev; TYPE_1__ attrs; scalar_t__ address; } ;
struct sale {int rid; int r; int rank; int data_state; int op_state; int p; scalar_t__ sa; } ;


 int dev_set_name (TYPE_2__*,char*,unsigned long long) ;
 int scm_bus_type ;
 int scm_root ;
 int scmdev_attr_groups ;
 int scmdev_release ;

__attribute__((used)) static void scmdev_setup(struct scm_device *scmdev, struct sale *sale,
    unsigned int size, unsigned int max_blk_count)
{
 dev_set_name(&scmdev->dev, "%016llx", (unsigned long long) sale->sa);
 scmdev->nr_max_block = max_blk_count;
 scmdev->address = sale->sa;
 scmdev->size = 1UL << size;
 scmdev->attrs.rank = sale->rank;
 scmdev->attrs.persistence = sale->p;
 scmdev->attrs.oper_state = sale->op_state;
 scmdev->attrs.data_state = sale->data_state;
 scmdev->attrs.rank = sale->rank;
 scmdev->attrs.release = sale->r;
 scmdev->attrs.res_id = sale->rid;
 scmdev->dev.parent = scm_root;
 scmdev->dev.bus = &scm_bus_type;
 scmdev->dev.release = scmdev_release;
 scmdev->dev.groups = scmdev_attr_groups;
}
